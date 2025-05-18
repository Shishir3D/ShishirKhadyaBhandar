package com.shishirkhadyabhandar.util;

public final class RegisterValidationUtil { 

    // Make the constructor private so this utility class cannot be instantiated
    private RegisterValidationUtil() {}

    /**
     * Validates the user registration input data.
     *
     * @param fullName The user's full name.
     * @param userName The desired username.
     * @param email The user's email address.
     * @param phoneNumber The user's phone number.
     * @param role The selected role ("user" or "admin").
     * @param adminKey The provided key (only relevant if role is "admin").
     * @param password The user's chosen password.
     * @param repassword The confirmation password.
     * @param expectedAdminKey The correct key required for admin registration.
     * @return An error message String if validation fails, or null if validation passes.
     */
    public static String validateRegistration(String fullName, String userName, String email,
                                            String phoneNumber, String role, String adminKey,
                                            String password, String repassword,
                                            String expectedAdminKey) {

        // 1. Check for required fields (null or empty/whitespace only)
        if (isNullOrBlank(fullName) ||
            isNullOrBlank(userName) ||
            isNullOrBlank(email) ||
            isNullOrBlank(phoneNumber) ||
            isNullOrBlank(role) || // Role must be selected
            password == null || password.isEmpty() || // Password can't be just whitespace
            repassword == null || repassword.isEmpty()) {
            return "All fields except Admin Key are required.";
        }

        // Trim whitespace from fields that allow it before further validation
        String trimmedUserName = userName.trim();
        // String trimmedEmail = email.trim(); // Consider trimming email too

        // 2. Username length validation
        if (trimmedUserName.length() < 5) {
            return "Username must be at least 5 characters long.";
        }

        // 3. Password match validation
        if (!password.equals(repassword)) {
            return "Passwords do not match.";
        }

        // 4. Admin Key validation (only if role is admin)
        if ("admin".equalsIgnoreCase(role.trim())) { // Use equalsIgnoreCase for robustness
            // Admin key is required if role is admin
            if (isNullOrBlank(adminKey)) {
                 return "Admin Key is required for Admin registration.";
            }
            // Check if the provided key matches the expected key
            if (!expectedAdminKey.equals(adminKey)) { // Use .equals for String comparison
                 return "Invalid Admin Key provided for Admin registration.";
            }
        }


        // 5. If all checks passed
        return null; // Indicates successful validation
    }

    /**
     * Helper method to check if a String is null, empty, or contains only whitespace.
     * @param str The String to check.
     * @return true if the String is null or blank, false otherwise.
     */
    private static boolean isNullOrBlank(String str) {
        return str == null || str.trim().isEmpty();
    }
}