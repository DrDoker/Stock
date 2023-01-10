//
//  ViewController.swift
//  Stock
//
//  Created by Serhii  on 09/01/2023.
//

import UIKit
import SnapKit

class WatchListViewController: UIViewController {
	
	// MARK: - Outlets
	
	private lazy var searchViewController: UISearchController = {
		let resultViewController = SearchResultsViewController()
		resultViewController.delegate = self
		let searchViewController = UISearchController(searchResultsController: resultViewController)
		searchViewController.searchResultsUpdater = self
		return searchViewController
	}()
	
	private lazy var titleView: TitleView = {
		let titleView = TitleView()
		return titleView
	}()
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .systemBackground
		setupHierarchy()
		setupLayout()
		setupNavigationBar()
	}
	
	// MARK: - Setup
	
	private func setupNavigationBar() {
		navigationItem.titleView = titleView
		navigationItem.searchController = searchViewController
	}
	
	private func setupHierarchy() {
		
	}
	
	private func setupLayout() {

	}
}

extension WatchListViewController: UISearchResultsUpdating {
	func updateSearchResults(for searchController: UISearchController) {
		guard let query = searchController.searchBar.text,
			  let resultViewController = searchController.searchResultsController as? SearchResultsViewController,
			  !query.trimmingCharacters(in: .whitespaces).isEmpty else {
			return
		}
		
		resultViewController.update(with: ["GOOG"])
		
	}
}

extension WatchListViewController: SearchResultsViewControllerDelegate {
	func searchResultsViewControllerDidSelect(searchResult: String) {
		
	}
}
