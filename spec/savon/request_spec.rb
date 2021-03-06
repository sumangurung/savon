require "spec_helper"

describe Savon::Request do
  before { @request = some_request_instance }

  def some_request_instance
    Savon::Request.new SpecHelper.some_endpoint
  end

  def some_soap_instance(options = {})
    Savon::SOAP.new UserFixture.soap_actions[:find_user]
  end

  describe "ContentType" do
    it "contains the ContentType for each supported SOAP version" do
      Savon::SOAPVersions.each do |soap_version|
        Savon::Request::ContentType[soap_version].should be_a String
        Savon::Request::ContentType[soap_version].should_not be_empty
      end
    end
  end

  describe "@log" do
    # It defaults to true, but it's turned off for spec execution.

    it "has accessor methods" do
      Savon::Request.log = true
      Savon::Request.log?.should be_true
      Savon::Request.log = false
      Savon::Request.log?.should be_false
    end
  end

  describe "@logger" do
    it "defaults to Logger" do
      Savon::Request.logger.should be_a Logger
    end

    it "has accessor methods" do
      Savon::Request.logger = nil
      Savon::Request.logger.should be_nil
      Savon::Request.logger = Logger.new STDOUT
    end
  end

  describe "@log_level" do
    it "defaults to :debug" do
      Savon::Request.log_level.should == :debug
    end

    it "has accessor methods" do
      Savon::Request.log_level = :info
      Savon::Request.log_level.should == :info
      Savon::Request.log_level = :debug
    end
  end

  describe "initialize" do
    it "expects a SOAP endpoint String" do
      some_request_instance
    end

    it "raises an ArgumentError in case of an invaluid endpoint" do
      lambda { Savon::Request.new "invalid" }.should raise_error ArgumentError
    end
  end

  describe "endpoint" do
    it "returns the SOAP endpoint URI" do
      @request.endpoint.should == SpecHelper.some_endpoint_uri
    end
  end

  describe "wsdl" do
    it "retrieves the WSDL document and returns the Net::HTTPResponse" do
      wsdl_response = @request.wsdl

      wsdl_response.should be_a Net::HTTPResponse
      wsdl_response.body.should == UserFixture.user_wsdl
    end
  end

  describe "soap" do
    it "executes a SOAP request and returns the Net::HTTPResponse" do
      soap_response = @request.soap some_soap_instance

      soap_response.should be_a Net::HTTPResponse
      soap_response.body.should == UserFixture.user_response
    end
  end

end