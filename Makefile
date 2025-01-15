-include .env

build:; forge build

deploy:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(RPC_URL) --broadcast --private-key $(PRIVATE_KEY)

deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv