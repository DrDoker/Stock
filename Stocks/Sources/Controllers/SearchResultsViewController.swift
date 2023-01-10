//
//  SearchViewController.swift
//  Stock
//
//  Created by Serhii  on 09/01/2023.
//

import UIKit
import SnapKit

protocol SearchResultsViewControllerDelegate: AnyObject {
	func searchResultsViewControllerDidSelect(searchResult: String)
}

class SearchResultsViewController: UIViewController {
	
	weak var delegate: SearchResultsViewControllerDelegate?
	
	private var results: [String] = []
	// MARK: - Outlets
	
	private lazy var tableView: UITableView = {
		let tableView = UITableView()
		tableView.register(SearchResultTableViewCell.self, forCellReuseIdentifier: SearchResultTableViewCell.identifier)
		tableView.delegate = self
		tableView.dataSource = self
		return tableView
	}()
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .systemBackground
		setupHierarchy()
		setupLayout()
	}
	
	// MARK: - Setup
	
	private func setupHierarchy() {
		view.addSubview(tableView)
	}
	
	private func setupLayout() {
		tableView.snp.makeConstraints { make in
			make.top.bottom.leading.trailing.equalTo(view)
		}
	}
	
	public func update(with results: [String]) {
		self.results = results
		tableView.reloadData()
	}
}

// MARK: - Extension

extension SearchResultsViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: SearchResultTableViewCell.identifier, for: indexPath)
		cell.textLabel?.text = "AAPL"
		cell.detailTextLabel?.text = "Apple inc."
		return cell
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		10
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		delegate?.searchResultsViewControllerDidSelect(searchResult: "AAPL")
	}
}
