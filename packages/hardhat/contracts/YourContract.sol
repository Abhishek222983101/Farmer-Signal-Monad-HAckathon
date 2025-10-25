//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title FarmContract
 * @dev A smart contract for managing agricultural forward contracts
 * @notice This contract allows farmers to create forward contracts for their crops
 * @author Farm Signals
 */
contract FarmContract {
    /**
     * @dev Struct representing a forward contract for agricultural products
     * @param farmer The address of the farmer creating the contract
     * @param crop The type of crop being contracted
     * @param quantity The quantity of crop in the contract (in kg)
     * @param pricePerKg The price per kilogram of the crop
     * @param deliveryDate The timestamp when the crop should be delivered
     * @param createdAt The timestamp when the contract was created
     * @param isActive Whether the contract is currently active
     */
    struct ForwardContract {
        address farmer;
        string crop;
        uint256 quantity;
        uint256 pricePerKg;
        uint256 deliveryDate;
        uint256 createdAt;
        bool isActive;
    }

    // State Variables
    mapping(uint256 => ForwardContract) public contracts;
    uint256 public contractCount;

    // Events
    /**
     * @dev Emitted when a new forward contract is created
     * @param contractId The unique identifier of the contract
     * @param farmer The address of the farmer who created the contract
     * @param crop The type of crop in the contract
     * @param pricePerKg The price per kilogram of the crop
     */
    event ContractCreated(
        uint256 indexed contractId,
        address indexed farmer,
        string crop,
        uint256 pricePerKg
    );

    /**
     * @dev Constructor function called once on contract deployment
     * @notice Initializes the contract with contractCount starting at 0
     */
    constructor() {
        contractCount = 0;
    }

    /**
     * @dev Creates a new forward contract
     * @param _crop The type of crop being contracted
     * @param _quantity The quantity of crop in kilograms
     * @param _pricePerKg The price per kilogram in wei
     * @param _deliveryDate The timestamp when the crop should be delivered
     * @return contractId The unique identifier of the created contract
     */
    function createContract(
        string memory _crop,
        uint256 _quantity,
        uint256 _pricePerKg,
        uint256 _deliveryDate
    ) public returns (uint256 contractId) {
        // Validate input parameters
        require(bytes(_crop).length > 0, "Crop name cannot be empty");
        require(_quantity > 0, "Quantity must be greater than 0");
        require(_pricePerKg > 0, "Price per kg must be greater than 0");
        require(_deliveryDate > block.timestamp, "Delivery date must be in the future");

        // Increment contract counter
        contractCount++;
        contractId = contractCount;

        // Create new forward contract
        contracts[contractId] = ForwardContract({
            farmer: msg.sender,
            crop: _crop,
            quantity: _quantity,
            pricePerKg: _pricePerKg,
            deliveryDate: _deliveryDate,
            createdAt: block.timestamp,
            isActive: true
        });

        // Emit event
        emit ContractCreated(contractId, msg.sender, _crop, _pricePerKg);

        return contractId;
    }

    /**
     * @dev Retrieves a forward contract by its ID
     * @param _id The unique identifier of the contract
     * @return The forward contract struct
     */
    function getContract(uint256 _id) public view returns (ForwardContract memory) {
        require(_id > 0 && _id <= contractCount, "Contract does not exist");
        return contracts[_id];
    }
}
