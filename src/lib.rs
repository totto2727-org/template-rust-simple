/// Adds two signed 32-bit integers.
///
/// # Examples
///
/// ```
/// assert_eq!(project::add(2, 3), 5);
/// ```
#[must_use]
pub const fn add(left: i32, right: i32) -> i32 {
    left + right
}
