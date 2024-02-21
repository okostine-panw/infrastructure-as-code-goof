resource "azurerm_storage_account" "allowed" {
  account_kind = "BlobStorage"
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_storage_account" "allowed_2" {
  account_kind = "BlockBlobStorage"
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_storage_account" "allowed_3" {
  account_kind = "FileStorage"
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_storage_account" "allowed_4" {
  queue_properties {
    logging {
      read = true
    }
  }
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_storage_account" "denied" {
  queue_properties {
  }
  tags = {
    application = "umbrella"
  }
}

resource "azurerm_storage_account" "denied_2" {
  queue_properties {
    logging {
      read = false
    }
  }
  tags = {
    application = "umbrella"
  }
}
