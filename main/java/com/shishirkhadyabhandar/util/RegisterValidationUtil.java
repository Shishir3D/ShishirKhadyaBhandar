package com.shishirkhadyabhandar.util;

import java.util.regex.Pattern;

public class RegisterValidationUtil {

    private static final Pattern EMAIL_PATTERN = Pattern.compile(
            "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$");

    private static final Pattern PHONE_PATTERN = Pattern.compile("^(98|97|96)\\d{8}$");

    private static final Pattern USERNAME_PATTERN = Pattern.compile("^[a-zA-Z0-9_.]{3,20}$");

    private static final Pattern PASSWORD_PATTERN = Pattern.compile("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d@$!%*?&]{8,}$");

    /**
     * Validates all registration form fields.
     *
     * @param fullName      The user's full name.
     * @param userName      The desired username.
     * @param email         The user's email address.
     * @param phoneNumber   The user's phone number.
     * @param role          The selected role ("user" or "admin").
     * @param adminKeyInput The key provided if the role is "admin".
     * @param password      The chosen password.
     * @param repassword    The confirmed password.
     * @param expectedAdminKey The correct admin key defined in the controller.
     * @return A String containing the error message if validation fails, or null if validation passes.
     */
    public static String validateRegistration(
            String fullName, String userName, String email, String phoneNumber,
            String role, String adminKeyInput, String password, String repassword,
            String expectedAdminKey) {

        if (isNullOrEmpty(fullName)) {
            return "Full Name is required.";
        }
        if (isNullOrEmpty(userName)) {
            return "Username is required.";
        }
        if (isNullOrEmpty(email)) {
            return "Email is required.";
        }
        if (isNullOrEmpty(phoneNumber)) {
            return "Phone Number is required.";
        }
        if (isNullOrEmpty(role)) {
            return "Role selection is required.";
        }
        if (isNullOrEmpty(password)) {
            return "Password is required.";
        }
        if (isNullOrEmpty(repassword)) {
            return "Confirm Password is required.";
        }

        if (fullName.trim().length() < 3) {
            return "Full Name must be at least 3 characters long.";
        }
        if (!fullName.trim().matches("^[a-zA-Z\\s.'-]+$")) {
            return "Full Name contains invalid characters.";
        }

        if (!USERNAME_PATTERN.matcher(userName.trim()).matches()) {
            return "Username must be 3-20 characters and can only contain letters, numbers, underscores (_), and dots (.).";
        }

        if (!EMAIL_PATTERN.matcher(email.trim()).matches()) {
            return "Invalid email format.";
        }

        if (!PHONE_PATTERN.matcher(phoneNumber.trim()).matches()) {
            return "Invalid phone number format. (Expected: 98XXXXXXXX, 97XXXXXXXX)";
        }

        if ("admin".equalsIgnoreCase(role.trim())) {
            if (isNullOrEmpty(adminKeyInput)) {
                return "Admin Key is required for admin registration.";
            }
            if (!expectedAdminKey.equals(adminKeyInput)) {
                return "Invalid Admin Key.";
            }
        } else if (!"user".equalsIgnoreCase(role.trim())) {
            return "Invalid role selected.";
        }

        if (!PASSWORD_PATTERN.matcher(password).matches()) {
            return "Password must be at least 8 characters long and include at least one uppercase letter, one lowercase letter, and one digit. Special characters like @$!%*?& are allowed.";
        }

        if (!password.equals(repassword)) {
            return "Passwords do not match.";
        }

        return null;
    }

    /**
     * Helper method to check if a string is null or empty (after trimming leading/trailing whitespace).
     *
     * @param str The string to check.
     * @return true if the string is null or empty after trimming, false otherwise.
     */
    private static boolean isNullOrEmpty(String str) {
        return str == null || str.trim().isEmpty();
    }
}
