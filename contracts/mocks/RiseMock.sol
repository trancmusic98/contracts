pragma solidity 0.4.24;

import '../Rise.sol';

contract RiseMock is Rise {
    uint256 currentTime;

    constructor (address _mintSaver, address _cashContract)
    public
    Rise(_mintSaver, _cashContract) {}

    function getCurrentTime () public view returns(uint256) {
        if(currentTime == 0) {
            return 3600;
        } else {
            return currentTime;
        }
    }

    function setCurrentTime(uint256 _currentTime) public {
        currentTime = _currentTime;
    }

    function createBlockMock(uint256 _monthBlocks, uint256 _expectedBlockNumber)
    public returns(bool _isSuccess) {
        return createBlock(_monthBlocks, _expectedBlockNumber);
    }

    function burnQuarantinedMock() public returns(uint256) {
        return burnQuarantined();
    }
}