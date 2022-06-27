class Stock < ApplicationRecord
    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
            publishable_token: 'Tpk_0bf137761ac24058a2fa6c2ce6ac983d',
            secret_token: 'Tsk_ef0f9edb8f4d4845a2a08dfbbc66e650',
            endpoint: 'https://sandbox.iexapis.com/v1'
        )
        
        client.price(ticker_symbol)
    end
end
