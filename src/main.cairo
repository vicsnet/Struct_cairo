use debug::PrintTrait;
#[derive(Copy, Drop)]
struct User {
    active: bool,
    username: felt252,
    email: felt252,
    sign_in_count: u64,
}

struct Rectangle {
    width: u64,
    height: u64,
}
fn main() {
    let width1 = 30;
    let height1 = 10;
    let area = area(width1, height1);
    let mut user1 = User {
        active: true, username: 'vince123', email: "vince@gmail.com", sign_in_count: 1
    };

    user1.email = 'vinccce@gmail.com';
    build_user('vin@mail.com', 'vince');
    area.print();
    //  using tupples
    let rectangle = (30, 10);
    let area1 = area1(rectangle);
    area1.print();

    // using struct
    let rectangle11 = Rectangle { width: 30, height: 10 };
    let area2 = area2(rectangle11);
    area2.print();
    
}

fn build_user(email: felt252, username: felt252) -> User {
    User { active: true, username: username, email: email, sign_in_count: 1, }
}

fn area(width: u64, height: u64) -> u64 {
    width * height
}

// tupple
fn area1(dimension: (u64, u64)) -> u64 {
    let (x, y) = dimension;
    x * y
}

fn area2(rectangle: Rectangle) -> u64 {
    rectangle.width * rectangle.height
}

