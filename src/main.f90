program main
    ! Main program entry point
    ! This is a template Fortran program
    
    use, intrinsic :: iso_fortran_env, only: output_unit, error_unit
    implicit none
    
    ! Program variables
    character(len=*), parameter :: program_name = "fortran-template"
    character(len=*), parameter :: version = "1.0.0"
    
    ! Write welcome message
    write(output_unit, '(A)') "Welcome to " // program_name
    write(output_unit, '(A)') "Version: " // version
    write(output_unit, '(A)') ""
    write(output_unit, '(A)') "This is a template Fortran project."
    write(output_unit, '(A)') "Modify this file to implement your application logic."
    
end program main