$: << File.dirname(__dir__) + '/lib'
require 'saklient/errors/exception_factory'

ExceptionFactory = Saklient::Errors::ExceptionFactory
HttpException = Saklient::Errors::HttpException
HttpNotFoundException = Saklient::Errors::HttpNotFoundException
ServerPowerMustBeUpException = Saklient::Cloud::Errors::ServerPowerMustBeUpException

describe 'Exception' do
  
  it 'should be created' do
    
    x = ExceptionFactory.create(404)
    expect(x).to be_an_instance_of HttpNotFoundException
    
    x = ExceptionFactory.create(409, 'server_power_must_be_up')
    expect(x).to be_an_instance_of ServerPowerMustBeUpException
    
    x = ExceptionFactory.create(666, 'nameless_http_error', 'Ia! Cthulhu Fthagn!')
    expect(x).to be_an_instance_of HttpException
    expect(x.message).to eq 'Ia! Cthulhu Fthagn!'
    
 	end
  
end
