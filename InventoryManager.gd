# InventoryManager.gd
extends Node
 
# A signal to notify the UI when the inventory changes.
signal inventory_changed
 
var items: Array[InventoryItemData] = []
 
func add_item(item: InventoryItemData):
	items.append(item)
	inventory_changed.emit()
 
func remove_item(item: InventoryItemData):
	if items.has(item):
		items.erase(item)
		inventory_changed.emit()

func has_item(item_name: String) -> bool:
	for item in items:
		if item.item_name == item_name:
			return true
	return false
