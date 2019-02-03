// SnapKit Usage

titleLabel.translatesAutoresizingMaskIntoConstraints = false
titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
titleLabel.bottomAnchor.constraint(equalTo: self.descriptionLabel.topAnchor, constant: -8).isActive = true

descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
descriptionLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 8).isActive = true
descriptionLabel.leadingAnchor.constraint(equalTo: self.titleLabel.leadingAnchor).isActive = true
descriptionLabel.trailingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor).isActive = true
descriptionLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true

import SnapKit

titleLabel.snp.makeConstraints { (make) in
    make.top.equalToSuperview().offset(8)
    make.leading.equalToSuperview().offset(8)
    make.trailing.equalToSuperview().offset(-8)
    make.bottom.equalTo(descriptionLabel.snp.top).offset(-8)
}

descriptionLabel.snp.makeConstraints { (make) in
    make.top.equalTo(titleLabel.snp.bottom).offset(8)
    make.leading.equalTo(titleLabel.snp.leading)
    make.trailing.equalTo(titleLabel.snp.trailing)
    make.bottom.equalToSuperview().offset(-8)
}
