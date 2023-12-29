// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.18;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract ZcdNftToken is ERC721URIStorage,Ownable(msg.sender) {

    event mintTokenEvent(address sender,uint256 tokenId,string uri);

    constructor() ERC721("Zcd grasshopper","ZGH") {
        
    }


    function mint(address _to,uint256 _tokenId,string calldata _uri) external onlyOwner {

        _mint(_to,_tokenId);
        _setTokenURI(_tokenId,_uri);
        
        
        emit mintTokenEvent(_to,_tokenId,_uri);    
    }

}