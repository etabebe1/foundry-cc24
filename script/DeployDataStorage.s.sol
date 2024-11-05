// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {DataStorage} from "../src/DataStorage.sol";
import {Script} from "forge-std/Script.sol";

contract DeployDataStorage is Script {
    function run () external returns (DataStorage) {
        vm.startBroadcast(); //Sends everything after this line send it to the RPC 
        DataStorage dataStorage = new DataStorage();

        vm.stopBroadcast();
        return dataStorage;
    }

}
