//
//  MasterViewController.swift
//  Example
//
//  Created by Christoph Wendt on 23.03.18.
//

import Capable
import UIKit
// import Firebase

class FeatureOverviewController: UITableViewController {
    var alert: UIAlertController?
    var objects: [String: String]?
    var capable: Capable?

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.capable = Capable(withFeatures: [.largerText, .boldText, .shakeToUndo])
        capable = Capable()
        registerObservers()
        refreshData()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        registerObservers()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        unregisterObservers()
    }

    func refreshData() {
        if let capable = self.capable {
            objects = capable.statusMap
        }
    }

    func sendMetrics() {
        // The purpose of this function is to test API compatibility. To actually send telemetry, register each SDK
        // in the AppDelegate's didFinishLaunchingWithOptions callback
        #if os(iOS)
            if let statusMap = self.capable?.statusMap {
                let eventName = "Capable features received"
//                Analytics.logEvent(eventName, parameters: statusMap)
            }
        #endif
    }
}

// MARK: - Table View

extension FeatureOverviewController {
    override func numberOfSections(in _: UITableView) -> Int {
        return 1
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return objects?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let feature = value(forRow: indexPath.row)
        cell.textLabel!.text = feature.key
        cell.detailTextLabel!.text = feature.value

        return cell
    }

    private func value(forRow row: Int) -> (key: String, value: String) {
        if let objects = self.objects {
            let featuresArray = Array(objects)
            return featuresArray[row]
        }
        fatalError("Requested item does not exist")
    }
}

// MARK: Capable Notification

extension FeatureOverviewController {
    @objc private func featureStatusChanged(notification: NSNotification) {
        if let featureStatus = notification.object as? FeatureStatus {
            showAlert(for: featureStatus)
            refreshData()
            tableView.reloadData()
        }
    }

    func registerObservers() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(featureStatusChanged),
            name: .CapableFeatureStatusDidChange,
            object: nil
        )
    }

    func unregisterObservers() {
        NotificationCenter.default.removeObserver(self)
    }
}

// MARK: Alert

extension FeatureOverviewController {
    private func showAlert(for featureStatus: FeatureStatus) {
        let showNewAlert = {
            let alertTitle = "Feature status changed"
            let alertMessage = "\(featureStatus.feature.rawValue) changed to \(featureStatus.statusString)"
            self.alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
            if let alert = self.alert {
                alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
                self.present(alert, animated: true)
            }
        }

        dismissAlertIfNeeded(completion: showNewAlert)
    }

    private func dismissAlertIfNeeded(completion: @escaping () -> Void) {
        if alert != nil, presentedViewController == alert {
            alert!.dismiss(animated: false) {
                completion()
            }
        } else {
            completion()
        }
    }
}
