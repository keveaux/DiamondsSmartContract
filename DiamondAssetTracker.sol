// give compiler additional information enable certain compiler features
//tell the compiler to use the highest version ^
pragma solidity ^0.4.2;

//metadata on assets we have will be stored here
import "asset.sol";

// unmodifiable asset tracker
contract AssetTracker {
    // id for the asset
    string id;

    // create an id
    function setId(string id) public {

    }

    // get it to verify the id
    function getId() public constant returns(struct) {

        return id;

    }
 
 // data structure for the asset
    struct Asset {

        struct name;
        string description;
        string manufacturer;
        bool initialized;
    }

// create mappings to allow us to store asset properties as well as relation between asset and wallet uuid
   
   // private asset store used to store asset under their respective uuid
    mapping (string => Asset) private assetStrore;
    assetStrore[uuid] = Asset(name, description, true, manufacturer);

    // mapping for the address to make assignment of an asset to a wallet
    mapping (address => mapping(string => bool)) private walletStore;
    walletStore[msg.sender][uuid] = true;

    // events log changes into the database

    //event to create an asset
    event AssetCreate(address account,string uuid, string manufacturer);
    //event to reject an asset creation
    event RejectCreate(address account,string uuid, string message);
    event AssetTransfer(address from,string uuid);
    event RejectTransfer(address from,string uuid, string message);

    function createAsset(string name, string description, string manufacturer){
        if(assetStrore[uuid]initialized){
            RejectCreate(msg.sender,uuid,"Asset with UUID already exists");
        }

        assetStrore[uuid] = Asset(name,description,true);
        walletStore[msg.sender][uuid] = true;
        AssetCreate[msg.sender,uuid,manufacturer];
    }

// deploy this project to blockchain and call the required functions using web3


}




