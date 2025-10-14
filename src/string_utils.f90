!> String manipulation utilities module
!! This module provides common string operations using modern Fortran
!! features and best practices.
module string_utils
    use, intrinsic :: iso_fortran_env, only: int32
    implicit none
    private

    ! Maximum string length for operations
    integer(int32), parameter :: MAX_STR_LEN = 1024

    ! Public procedures
    public :: to_upper
    public :: to_lower
    public :: trim_whitespace
    public :: count_words
    public :: reverse_string

contains

    !> Convert string to uppercase
    !! @param input_str Input string
    !! @return Uppercase version of input string
    pure function to_upper(input_str) result(upper_str)
        character(len=*), intent(in) :: input_str
        character(len=len(input_str)) :: upper_str
        integer(int32) :: i, ascii_val

        upper_str = input_str
        do i = 1, len_trim(input_str)
            ascii_val = iachar(upper_str(i:i))
            ! Convert lowercase letters to uppercase
            if (ascii_val >= 97 .and. ascii_val <= 122) then
                upper_str(i:i) = achar(ascii_val - 32)
            end if
        end do
    end function to_upper

    !> Convert string to lowercase
    !! @param input_str Input string
    !! @return Lowercase version of input string
    pure function to_lower(input_str) result(lower_str)
        character(len=*), intent(in) :: input_str
        character(len=len(input_str)) :: lower_str
        integer(int32) :: i, ascii_val

        lower_str = input_str
        do i = 1, len_trim(input_str)
            ascii_val = iachar(lower_str(i:i))
            ! Convert uppercase letters to lowercase
            if (ascii_val >= 65 .and. ascii_val <= 90) then
                lower_str(i:i) = achar(ascii_val + 32)
            end if
        end do
    end function to_lower

    !> Remove leading and trailing whitespace
    !! @param input_str Input string
    !! @return String with whitespace trimmed
    pure function trim_whitespace(input_str) result(trimmed_str)
        character(len=*), intent(in) :: input_str
        character(len=len(input_str)) :: trimmed_str
        integer(int32) :: start_pos, end_pos, i

        ! Find first non-whitespace character
        start_pos = 1
        do i = 1, len(input_str)
            if (input_str(i:i) /= ' ' .and. input_str(i:i) /= char(9)) then
                start_pos = i
                exit
            end if
        end do

        ! Find last non-whitespace character
        end_pos = len(input_str)
        do i = len(input_str), 1, -1
            if (input_str(i:i) /= ' ' .and. input_str(i:i) /= char(9)) then
                end_pos = i
                exit
            end if
        end do

        if (start_pos <= end_pos) then
            trimmed_str = input_str(start_pos:end_pos)
        else
            trimmed_str = ''
        end if
    end function trim_whitespace

    !> Count the number of words in a string
    !! @param input_str Input string
    !! @return Number of words (separated by whitespace)
    pure function count_words(input_str) result(word_count)
        character(len=*), intent(in) :: input_str
        integer(int32) :: word_count
        integer(int32) :: i
        logical :: in_word

        word_count = 0
        in_word = .false.

        do i = 1, len_trim(input_str)
            if (input_str(i:i) /= ' ' .and. input_str(i:i) /= char(9)) then
                if (.not. in_word) then
                    word_count = word_count + 1
                    in_word = .true.
                end if
            else
                in_word = .false.
            end if
        end do
    end function count_words

    !> Reverse a string
    !! @param input_str Input string
    !! @return Reversed string
    pure function reverse_string(input_str) result(reversed_str)
        character(len=*), intent(in) :: input_str
        character(len=len(input_str)) :: reversed_str
        integer(int32) :: i, str_len

        str_len = len_trim(input_str)
        do i = 1, str_len
            reversed_str(i:i) = input_str(str_len - i + 1:str_len - i + 1)
        end do

        ! Pad with spaces if necessary
        if (str_len < len(reversed_str)) then
            reversed_str(str_len + 1:) = ' '
        end if
    end function reverse_string

end module string_utils