require "soda/client"

class DataCollector
  def initialize
    @client = SODA::Client.new(
      domain: ENV["soda_domain"],
      app_token: ENV["2RHxxTFyu-YZf9SVtWLBNRPajEffedH5Dbl1"]
      )
  end

  def eatery_info
    @client.get(
      ENV["soda_dataset_identifier"],
      "$select" => restaurant_inspection_results,)
  end

  def restaurant_inspection_results
    [
      :boro,
      :dba,
      :street,
      :violation_description,
      :grade]
  end
