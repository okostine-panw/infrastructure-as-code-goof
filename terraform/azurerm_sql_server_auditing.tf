resource "azurerm_mssql_server" "allowed" {
  extended_auditing_policy {
  }
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_mssql_server" "denied" {
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_sql_server" "allowed" {
  extended_auditing_policy {
    retention_in_days = 89
  }
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_sql_server" "denied" {
  tags = {
    application = "umbrella"
  }
}

