// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;


contract Lec4 {

/* 함수를 정의하는 법

function 이름 () public {
    내용
}
*/

    uint256 public a = 3;

// Parameter와 Return의 유무에 따라 3가지로 나뉨
// (1) P와 R 모두 없는 함수
// (2) P는 있고, R은 없는 함수
// (3) P, R 둘 다 있는 함수

// (1) 번 케이스부터 보자.

    function changeA1() public {        //a의 값을 3->5로 변경해주는 함수
        a = 5;
    }

// (2) 번 케이스를 보자.

    function changeA2(uint256 _value) public {
        a = _value;
    }

// (3) 번 케이스도 마저 보자.

    function changeA3(uint256 _value) public returns(uint256){
        a = _value;
        return a;
    }


}