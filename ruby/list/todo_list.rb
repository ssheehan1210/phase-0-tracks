class TodoList
	def initialize(list)
		@list = list
	end

	def get_items
		@list
	end

	def add_item(item)
		@list << item
	end

	def delete_item(item)
		@list.delete(item)
		@list
	end

	def get_item(ind_num)
		@list.at(ind_num)
	end
end