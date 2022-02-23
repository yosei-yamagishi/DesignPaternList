import UIKit

class DesignPaternListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.registerNib(
                cellType: DesignPatternListTableViewCell.self
            )
        }
    }
    
    private let viewModel: DesignPaternListViewModel
    
    init(
        viewModel: DesignPaternListViewModel = DesignPaternListViewModel()
    ) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "デザインパターン一覧"
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension DesignPaternListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        viewModel.listSections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.listSections[section].items.count
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let listSection = viewModel.listSections[indexPath.section]
        let item = listSection.items[indexPath.row]
        let cell = tableView.dequeueReusableCell(for: indexPath) as DesignPatternListTableViewCell
        cell.setup(
            title: item.title,
            discription: item.discription
        )
        return cell
    }
    
    func tableView(
        _ tableView: UITableView,
        titleForHeaderInSection section: Int
    ) -> String? {
        viewModel.listSections[section].title
    }
}

extension DesignPaternListViewController: UITableViewDelegate {
    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        if let selectedRow = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: selectedRow, animated: true)
        }
        
        let listSection = viewModel.listSections[indexPath.section]
        let item = listSection.items[indexPath.row]
        print(listSection, item)
    }
}
