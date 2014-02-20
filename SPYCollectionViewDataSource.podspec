Pod::Spec.new do |spec|
  spec.name = 'SPYCollectionViewDataSource'
  spec.version = '0.0.1'
  spec.authors = {'Scott Petit' => 'petit.scott@gmail.com'}
  spec.homepage = 'https://github.com/ScottPetit/'
  spec.summary = 'A Collection View Data Source and Delegate for the simple things'
  spec.source = {:git => 'git@192.241.254.234:ScottPetit/spycollectionviewdatasource.git', :tag => "v#{spec.version}"}
  spec.license = { :type => 'MIT', :file => 'LICENSE' }

  spec.platform = :ios
  spec.requires_arc = true
  spec.frameworks = 'UIKit', 'Foundation'
  spec.source_files = 'SPYCollectionViewDataSource/'
end
