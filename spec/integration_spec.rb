require 'spec_helper'

RSpec.describe 'Integration' do
  subject { Main.new }

  describe 'connection pool' do
  	it 'loads connection pool when application starts' do
  	  expect(subject.send(:connection_pool)).to be_kind_of(ConnectionPool)
  	end
  end
end
