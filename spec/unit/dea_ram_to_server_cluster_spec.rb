describe "convert minimum required DEA RAM into cluster of servers" do
  # there is the "requested amount of RAM", then there is the
  # "usable amount of RAM" that user will get. It will be greater
  # than the "requested amount"
  describe "for AWS flavors" do
    def user_requests(requested_ram, resulting_cluster)
      gets_ram = resulting_cluster[:gets]
      using_count = resulting_cluster[:using]
      server_flavor = resulting_cluster[:flavor]
    end
    user_requests "1G", gets: "1.4G", using: 1, flavor: "m1.small" 
    user_requests "2G", gets: "1.4G", using: 2, flavor: "m1.small" 
    it "converts 1G into 1 x m1.small with 1.4G each"
    it "converts 2G into 2 x m1.small with 1.4G each"
    it "converts 3G into 3 x m1.small with 1.4G each" # 200Mb for agent enough?
    it "converts 4G into 3 x m1.small with 1.4G each"
    it "converts 5G into 4 x m1.small with 1.4G each"
    it "converts 6G into 5 x m1.small with 1.4G each"
    it "converts 7G into 5 x m1.small with 1.4G each"
    it "converts 8G into 3 x m1.medium with 3.4G each"
    it "converts 9G into 3 x m1.medium with 3.4G each"
    it "converts 10G into 3 x m1.medium with 3.4G each"
    it "converts 20G into 3 x m1.large with 7G each"
    it "converts 50G into 3 x m2.xlarge with 14.5G each"
    it "converts 100G into 3 x m2.2xlarge with 3.4G each"
    it "converts 200G into 3 x m2.4xlarge with 3.4G each"
    it "converts 500G into 6 x m2.4xlarge with 3.4G each" # check this
    it "converts 1T into 12 x m2.4xlarge with 3.4G each"
    it "converts 2T into 24 x m2.4xlarge with 3.4G each"
    it "converts 5T into ?? x m2.4xlarge with 3.4G each"
    it "converts 10T into ?? x m2.4xlarge with 3.4G each"
  end
end