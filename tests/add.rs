use project::add;

#[test]
fn adds_two_integers() {
    // Given
    let left = 2;
    let right = 3;

    // When
    let actual = add(left, right);

    // Then
    assert_eq!(actual, 5);
}
