// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;


// Instance는, 서로 다른 두 개의 컨트랙트를 접근할 때 사용됨.

// A와 B 컨트랙이 있다면, B에서 A 컨트랙의 함수나 변수에 접근하고자 할 때 
// A instance를 만들어서 B 컨트랙에 집어넣으면 된다는 소리!

// 먼저 A 컨트랙을 만들어보자.

contract A {

    uint256 public a = 5;

    function changeA(uint256 _value) public {
        a = _value;
    }

    // A 컨트랙트 상에서 a를 정의하고, a를 입력값으로 바꾸는 함수 changeA를 정의했음
}

contract B {

    // B 컨트랙을 만들었는데, A 컨트랙에 있는 변수 a와 changeA 함수를 가져오고 싶음.
    // 이 때 컨트랙트의 인스턴스를 만들어서 해결 가능

    A instance = new A();

    // 이제 가져오려면 . 을 사용해 주면 됨.

    // a를 가져오려면 -> instance.a();
    // changeA 함수를 가져오려면 -> instance.changeA(_value);

    function get_a() public view returns(uint256) {

        return instance.a();
    }

    function get_changeA(uint256 _value) public {       //uint256과 _value 사이에 , 안 씀! 주의!

        return instance.changeA(_value);
    }


    // 요렇게!
}

// 참고로, A instance 는 A 스마트컨트랙트의 분신과도 같음

// A와 A instance를 B로 통해 배포한 것은 완전히 다른 독립된 별개의 스마트 컨트랙트이니 참고!
// 따라서 A instance로 가져온 것에서 a값을 변경해도 원래의 A 컨트랙에 영향 미치지 않음!