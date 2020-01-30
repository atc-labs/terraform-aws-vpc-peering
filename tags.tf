locals {
  required_tags = merge(
    map(
      "Project",            var.project,
      "Function",           var.function,
      "OrganizationalUnit", var.organizational_unit,
      "Environment",        var.environment,
      "Workspace",          var.workspace,
    ),
    var.additional_tags
  )
}
