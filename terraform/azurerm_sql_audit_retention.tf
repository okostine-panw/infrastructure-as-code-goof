resource "azurerm_mssql_server" "allowed" {
  extended_auditing_policy {
    retention_in_days = 90
  }
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_mssql_server" "allowed_2" {
  extended_auditing_policy {
    retention_in_days = 0
  }
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_mssql_server" "allowed_3" {
  extended_auditing_policy {
  }
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_mssql_server" "allowed_4" {
  extended_auditing_policy {
    retention_in_days = 91
  }
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_mssql_server" "allowed_5" {
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_sql_server" "allowed" {
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_mssql_server" "denied_2" {
  extended_auditing_policy {
    retention_in_days = 89
  }
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_mssql_server" "denied_3" {
  extended_auditing_policy {
    retention_in_days = 1
  }
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_sql_server" "allowed" {
  extended_auditing_policy {
    retention_in_days = 90
  }
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_sql_server" "denied" {
  extended_auditing_policy {
    retention_in_days = 89
  }
  tags = {
    application = "umbrella"
  }
}
