
Pod::Spec.new do |s|
  s.name         = "RNDownloadButton"
  s.version      = "1.0.0"
  s.summary      = "RNDownloadButton"
  s.description  = <<-DESC
                  RNDownloadButton
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNDownloadButton.git", :tag => "master" }
  s.source_files  = "RNDownloadButton/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  