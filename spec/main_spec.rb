require 'spec_helper'

RSpec.describe 'Main flow' do
	# 1) BTC: Qwsogvtv82FCd
	# 2) ETH: razxDUgYGNAdQ
	# 3) BNB: WcwrkfNI4FUAe
	# 4) XRP: -l8Mn2pVlRs-p
	# 5) DOGE: a91GCGd_u96cF
	# 6) SOL: zNZHO_Sjf
	# 7) MATIC: uW2tk-ILY0ii
	# 8) ATOM: Knsels4_Ol-Ny
	# 9) ARB: 1Uo6s62Oc
	# 10) RNDR: 7C4Mh4xy1yDel

	describe 'Analysis language' do
	  # Stats(BTC, from: 2020-01-01, to: 2022-12-12, step: 1.day, details: [price, 20-days-moving-average])
	  # Returns updated stats
	end

	describe 'Update action' do
		# GetCurrentPrice(BTC, timestamp: Time.now)
	end


  # 10k free requests
  # 10 assets
  # 24 * 60 * 60 = 86400 seconds a day have + 1000 req/asset -> request every ~2 minutes
  # 24 (hours) * 30 (request per hour for asset) * 10 (assets) = 7200

	describe 'Mass update job' do
		# MassUpdateJob.perform_now - schedules price updates for every portfolio asset
	end

	describe 'Get coin info' do
		# Returns:
		# - how many account holds
		# - what is the avg buy price
		# - what is current price
		# - set of statistics based on decision buy/sell is made
	end

	describe 'Trading account' do
		# Returns:
		# - Summary of tokens assigned to account
	end

  it do
  	binding.pry
  end
end
