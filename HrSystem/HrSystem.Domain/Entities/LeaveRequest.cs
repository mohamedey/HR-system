using HrSystem.Domain.Common;
using HrSystem.Domain.Enums;

namespace HrSystem.Domain.Entities;

public class LeaveRequest : BaseEntity
{
    public int EmployeeId { get; set; }
    public Employee Employee { get; set; } = null!;

    public LeaveType LeaveType { get; set; }
    public DateTime StartDate { get; set; }
    public DateTime EndDate { get; set; }
    public string? Reason { get; set; }
    public LeaveStatus Status { get; set; } = LeaveStatus.Pending;

    public int? ReviewedById { get; set; }
    public Employee? ReviewedBy { get; set; }
    public string? ReviewComment { get; set; }

    public int DaysCount => (EndDate.Date - StartDate.Date).Days + 1;
}