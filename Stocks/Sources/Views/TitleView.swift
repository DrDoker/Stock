//
//  titleUIView.swift
//  Stocks
//
//  Created by Serhii  on 10/01/2023.
//

import UIKit
import SnapKit

class TitleView: UIView {
	
	lazy var title: UILabel = {
		let lable = UILabel()
		lable.text = "Stocks"
		lable.font = .systemFont(ofSize: 40, weight: .medium)
		return lable
	}()
	
	lazy var stackView: UIStackView = {
		let stackView = UIStackView()
		stackView.axis = .vertical
		return stackView
	}()
	
	override init(frame: CGRect) {
		super .init(frame: frame)
		setupHierarchy()
		setupLayout()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	// MARK: - Setup
	
	private func setupHierarchy() {
		addSubview(stackView)
		stackView.addArrangedSubview(title)
	}
	
	private func setupLayout() {
		stackView.snp.makeConstraints { make in
			make.centerY.equalTo(self)
			make.left.equalTo(self)
		}
	}
	
}
