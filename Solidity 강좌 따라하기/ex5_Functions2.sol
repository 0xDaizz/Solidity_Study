// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;


contract lec5{

    /* 함수 양식
    function 이름 () public {
        내용
    }
    */

    /* public, private, internal, external 선택

    public : 모든 곳에서 접근 가능
    external : public처럼 모든 곳에서 접근 가능하지만, external이 정의된 자기자신 컨트랙에서 접근 불가
    private : 오직 private가 정의된 자기 컨트랙트에서만 가능. private 정의된 컨트랙을 상속받은 자식도 불가능!!
    internal : private와 유사하지만 상속받은 컨트랙에서는 접근 가능함
    */

    //확인해보자.

    //1. public

    uint256 public a = 5;

    //2. private

    uint256 private b = 7;

    // 이 상태로 Deploy해 확인해보면, 외부에서 접근하는 것이기 때문에 
    // a는 확인 가능하지만 b는 확인할 수 없다!
}


// 한 Solidity 파일 내에 여러 가지 컨트랙트가 있는 경우도 마찬가지.


contract lec5_1{

    //lec5_1이라는 새로운 컨트랙트를 만들었음

    uint256 public a = 1;

    function ChangeA1(uint256 _value) public {
        a = _value;
    }

    function get_a() view public returns (uint256) {
        return a;
    }
}

contract lec5_2{

    //lec5_2 새로운 컨트랙트 만들었다.

    lec5_1 instance = new lec5_1();

    function changeA2(uint256 _value) public{
        instance.ChangeA1(_value);
    }

    function use_lec5_1() view public returns(uint256) {
        return instance.get_a();
    }
}

// 46줄의 public을 private로 변경하면, 
// 이 ChangeA1 함수는 다른 컨트랙에서 쓸 수 없게 됨.
// 즉, 62줄의 내용에 오류가 나게 되는 것을 볼 수 있음
// Member "ChangeA1" not found or not visible after argument-dependent lookup in contract lec5_1. [Ln 62, 열 9]