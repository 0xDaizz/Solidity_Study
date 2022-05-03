// SPDX-License-Identifier: GPL-3.0
// 라이선스는 항상 언급해줘야 한다는 것 같음

pragma solidity 0.8.7; //예전 책들 보면 ^0.8.7; 이렇게 하던데... 지금 그렇게 적으면 에러남. 안하는 게 맞는듯


//contract 블록과 그 위의 pragma 블록 사이에 정확히 빈 줄 두 개가 있어야 한다... 여기서는 5, 6번 줄.(엔터 두 번만큼의 빈 공간)
contract Hello {        // '{'를 사용할 때는 앞의 단어와 띄어 써야 함.
    string public hi = "Hello Solidity";
}

//print기능이 없어서, 컴파일 후 deploy해 확인해야 하는 것은 조금 불편한 듯.

