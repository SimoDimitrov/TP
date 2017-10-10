require 'csv'
require 'linear-regression'
class ApplicationController < ActionController::Base
protect_from_forgery with: :null_sessions

def sums
	CSV.foreach do |row|
	sum=0;
	sum += row[0];
	sum=sum.ceil
	render plain: ('%.2f'%sum)
end

def filter
	CSV.foreach do |row|
	sum=0;
	sum+erow[1] if row[2]%2!=0;
	  end
	end	
	sum=sum.ceil
	render plain: ('%.2f'%sum)
end

end
