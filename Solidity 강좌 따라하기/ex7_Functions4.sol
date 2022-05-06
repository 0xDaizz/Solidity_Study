// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;


// string을 funcyion 내에서 사용하기

// 솔리디티의 저장 영역 4가지!
// Storage, Memory, Calldata, Stack

// Storage : 대부분의 함수,변수들이 저장되며, 영속적이기 때문에 가스가 비쌈

// Memory : 함수의 파라미터, 리턴, 레퍼런스 등이 저장됨. but 영속적이지 X, 함수 내에서만 유효 -> 가스비가 storage보다 쌈

// Calldata : 주로 External function의 파라미터에서 사용됨

// Stack : EVM에서 stack data 관리할 때 사용되는 영역, 1024mb 제한

//---------------------------------------


//String은 레퍼런스타입. memory에 일시적으로 저장되는 것을 원하므로 memory 사용해야 함

contract lec7 { 

    function get_string(string memory _str) public pure returns(string memory) {
        return _str;
    }

    // 이 함수는 string을 입력받아서 그대로 출력하는 함수.

    // string 다음에 바로 memory 붙임!

    // pure를 사용하는 이유 : 파라미터를 받은 것을 리턴하는데, storage에 저장된 변수를 읽지 않기 때문.




}
