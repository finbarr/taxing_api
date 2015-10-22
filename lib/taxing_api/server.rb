require "taxing"

class TaxingApi::Server
  RATES = Taxing::Rate.all.each_with_object({}) do |r, h|
    h[r[:zip_code]] = r.to_json
  end.freeze

  def self.call(env)
    zip = env["PATH_INFO"][1..-1]
    if r = RATES[zip]
      [200, {'Content-Type' => 'application/json'}, [r]]
    else
      [404, {'Content-Type' => 'application/json'}, []]
    end
  end
end
