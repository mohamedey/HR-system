$root = "."
if (Test-Path "src") { $root = "src" }

$files = @(
  "$root/HrSystem.Application/DTOs/Auth/LoginRequestDto.cs",
  "$root/HrSystem.Application/DTOs/Auth/AuthResponseDto.cs",
  "$root/HrSystem.Application/DTOs/Employees/EmployeeDto.cs",
  "$root/HrSystem.Application/DTOs/Employees/CreateEmployeeDto.cs",
  "$root/HrSystem.Application/DTOs/Departments/DepartmentDto.cs",
  "$root/HrSystem.Application/DTOs/Positions/PositionDto.cs",
  "$root/HrSystem.Application/DTOs/LeaveRequests/LeaveRequestDto.cs",
  "$root/HrSystem.Application/Interfaces/IEmployeeRepository.cs",
  "$root/HrSystem.Application/Interfaces/IDepartmentRepository.cs",
  "$root/HrSystem.Application/Interfaces/ILeaveRequestRepository.cs",
  "$root/HrSystem.Application/Interfaces/IAuthService.cs",
  "$root/HrSystem.Application/Interfaces/IJwtTokenService.cs",
  "$root/HrSystem.Application/Services/EmployeeService.cs",
  "$root/HrSystem.Application/Services/DepartmentService.cs",
  "$root/HrSystem.Application/Services/LeaveRequestService.cs",
  "$root/HrSystem.Application/Validators/CreateEmployeeValidator.cs",
  "$root/HrSystem.Application/Common/Exceptions/NotFoundException.cs",
  "$root/HrSystem.Application/DependencyInjection.cs",
  "$root/HrSystem.Infrastructure/Persistence/AppDbContext.cs",
  "$root/HrSystem.Infrastructure/Persistence/Configurations/EmployeeConfiguration.cs",
  "$root/HrSystem.Infrastructure/Persistence/Configurations/LeaveRequestConfiguration.cs",
  "$root/HrSystem.Infrastructure/Identity/ApplicationUser.cs",
  "$root/HrSystem.Infrastructure/Identity/JwtSettings.cs",
  "$root/HrSystem.Infrastructure/Identity/JwtTokenService.cs",
  "$root/HrSystem.Infrastructure/Identity/AuthService.cs",
  "$root/HrSystem.Infrastructure/Repositories/EmployeeRepository.cs",
  "$root/HrSystem.Infrastructure/Repositories/DepartmentRepository.cs",
  "$root/HrSystem.Infrastructure/Repositories/LeaveRequestRepository.cs",
  "$root/HrSystem.Infrastructure/DependencyInjection.cs",
  "$root/HrSystem.WebApi/Controllers/AuthController.cs",
  "$root/HrSystem.WebApi/Controllers/EmployeesController.cs",
  "$root/HrSystem.WebApi/Controllers/DepartmentsController.cs",
  "$root/HrSystem.WebApi/Controllers/LeaveRequestsController.cs",
  "$root/HrSystem.WebApi/Middleware/ExceptionHandlingMiddleware.cs"
)

foreach ($f in $files) {
  New-Item -ItemType File -Force -Path $f | Out-Null
}

Write-Host "Done: $($files.Count) files created"