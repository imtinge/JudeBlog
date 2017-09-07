::CarrierWave.configure do |config|
    config.storage              = :qiniu
    config.qiniu_access_key     = "yePnyZZjrmitQ_x5uqMw97RHUtBjrXblFtsBjY2e"
    config.qiniu_secret_key     = 'RpfPE0dxyKFB65StVk_6OnIzyyB5uWegQ_y7x-xH'
    config.qiniu_bucket         = "judeblog"
    config.qiniu_bucket_domain  = "ovwjdc4li.bkt.clouddn.com"
end