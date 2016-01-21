note
	description: "A board for the peg solitaire game."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BOARD

inherit

	ANY
		redefine
			out,
			is_equal
		end

create
	make_default, make_easy, make_cross, make_plus, make_pyramid, make_arrow, make_diamond, make_skull

feature -- Constructor

	make_default
			-- Initialize a default board with all slots unavailable.
		do
			create imp.make_filled (unavailable_slot, 7, 7)
		ensure
			board_set: Current ~ bta.templates.default_board
		end

	make_easy
			-- Initialize an easy board.
		do
			make_default
			set_status (1, 4, unoccupied_slot)
			set_status (4, 4, unoccupied_slot)
			set_status (6, 4, unoccupied_slot)
			set_statuses (2, 3, 4, 4, occupied_slot)
			set_status (5, 4, occupied_slot)
		ensure
			board_set: Current ~ bta.templates.easy_board
		end

	make_cross
			-- Initialize a Cross board.
		do
			make_easy
			set_statuses (1, 2, 3, 3, unoccupied_slot)
			set_statuses (1, 2, 5, 5, unoccupied_slot)
			set_statuses (3, 5, 1, 1, unoccupied_slot)
			set_statuses (3, 5, 2, 2, unoccupied_slot)
			set_statuses (3, 5, 6, 6, unoccupied_slot)
			set_statuses (3, 5, 7, 7, unoccupied_slot)
			set_statuses (4, 5, 3, 3, unoccupied_slot)
			set_statuses (4, 5, 5, 5, unoccupied_slot)
			set_statuses (6, 6, 3, 5, unoccupied_slot)
			set_statuses (7, 7, 3, 5, unoccupied_slot)
			set_status (3, 3, occupied_slot)
			set_status (3, 5, occupied_slot)
			set_status (4, 4, occupied_slot)
		ensure
			board_set: Current ~ bta.templates.cross_board
		end

	make_plus
			-- Initialize a Plus board.
		do
			make_easy
			set_statuses (1, 2, 3, 3, unoccupied_slot)
			set_statuses (1, 2, 5, 5, unoccupied_slot)
			set_statuses (3, 3, 1, 3, unoccupied_slot)
			set_statuses (3, 3, 5, 7, unoccupied_slot)
			set_status (4, 1, unoccupied_slot)
			set_status (4, 7, unoccupied_slot)
			set_statuses (5, 5, 1, 3, unoccupied_slot)
			set_statuses (5, 5, 5, 7, unoccupied_slot)
			set_status (6, 3, unoccupied_slot)
			set_status (6, 5, unoccupied_slot)
			set_statuses (7, 7, 3, 5, unoccupied_slot)
			set_status (6, 4, occupied_slot)
			set_statuses (4, 4, 2, 6, occupied_slot)
		ensure
			board_set: Current ~ bta.templates.plus_board
		end

	make_pyramid
			-- Initialize a Pyramid board.
		do
			make_easy
			set_statuses (1, 2, 3, 3, unoccupied_slot)
			set_statuses (1, 2, 5, 5, unoccupied_slot)
			set_statuses (3, 3, 1, 2, unoccupied_slot)
			set_statuses (3, 3, 6, 7, unoccupied_slot)
			set_status (4, 1, unoccupied_slot)
			set_status (4, 7, unoccupied_slot)
			set_statuses (6, 6, 3, 5, unoccupied_slot)
			set_statuses (7, 7, 3, 5, unoccupied_slot)
			set_statuses (5, 5, 1, 7, occupied_slot)
			set_statuses (4, 4, 2, 6, occupied_slot)
			set_statuses (3, 3, 3, 5, occupied_slot)
		ensure
			board_set: Current ~ bta.templates.pyramid_board
		end

	make_arrow
			-- Initialize a Arrow board.
		do
			make_easy
			set_status (1, 3, unoccupied_slot)
			set_status (1, 5, unoccupied_slot)
			set_status (3, 1, unoccupied_slot)
			set_status (3, 7, unoccupied_slot)
			set_statuses (4, 4, 1, 3, unoccupied_slot)
			set_statuses (4, 4, 5, 7, unoccupied_slot)
			set_statuses (5, 5, 1, 3, unoccupied_slot)
			set_statuses (5, 5, 5, 7, unoccupied_slot)
			set_status (1, 4, occupied_slot)
			set_status (2, 3, occupied_slot)
			set_status (2, 5, occupied_slot)
			set_statuses (3, 3, 2, 6, occupied_slot)
			set_status (4, 4, occupied_slot)
			set_statuses (6, 6, 3, 5, occupied_slot)
			set_statuses (7, 7, 3, 5, occupied_slot)
		ensure
			board_set: Current ~ bta.templates.arrow_board
		end

	make_diamond
			-- Initialize a Diamond board.
		do
			make_easy
			set_status (1, 3, unoccupied_slot)
			set_status (1, 5, unoccupied_slot)
			set_status (1, 4, occupied_slot)
			set_status (3, 1, unoccupied_slot)
			set_status (3, 7, unoccupied_slot)
			set_status (4, 4, unoccupied_slot)
			set_status (5, 1, unoccupied_slot)
			set_status (5, 7, unoccupied_slot)
			set_status (7, 3, unoccupied_slot)
			set_status (7, 5, unoccupied_slot)
			set_status (2, 3, occupied_slot)
			set_status (2, 5, occupied_slot)
			set_statuses (3, 3, 2, 6, occupied_slot)
			set_statuses (4, 4, 1, 3, occupied_slot)
			set_statuses (4, 4, 5, 7, occupied_slot)
			set_statuses (5, 5, 2, 6, occupied_slot)
			set_statuses (6, 6, 3, 5, occupied_slot)
			set_status (7, 4, occupied_slot)
		ensure
			board_set: Current ~ bta.templates.diamond_board
		end

	make_skull
			-- Initialize a Skull board.
		do
			make_easy
			set_statuses (3, 5, 1, 1, unoccupied_slot)
			set_statuses (3, 5, 7, 7, unoccupied_slot)
			set_status (4, 3, unoccupied_slot)
			set_status (4, 5, unoccupied_slot)
			set_statuses (1, 1, 3, 5, occupied_slot)
			set_statuses (2, 2, 3, 5, occupied_slot)
			set_statuses (3, 3, 2, 6, occupied_slot)
			set_status (4, 2, occupied_slot)
			set_status (4, 4, occupied_slot)
			set_status (4, 6, occupied_slot)
			set_statuses (5, 5, 2, 6, occupied_slot)
			set_statuses (6, 6, 3, 5, occupied_slot)
			set_statuses (7, 7, 3, 5, occupied_slot)
		ensure
			board_set: Current ~ bta.templates.skull_board
		end

feature -- Auxiliary Commands

	set_status (r, c: INTEGER; status: SLOT_STATUS)
			-- Set the status of slot at row 'r' and column 'c' to 'status'.
		require
			valid_row: is_valid_row (r)
			valid_column: is_valid_column (c)
		do
			imp.put (status, r, c)
		ensure
			slot_set: imp.item (r, c) ~ status
			slots_not_in_range_unchanged: matches_slots_except (current, r, r, c, c)
		end

	set_statuses (r1, r2, c1, c2: INTEGER; status: SLOT_STATUS)
			-- Set the range of slots to 'status':
			-- intersection of rows 'r1' to 'r2' and
			-- columns 'c1' to 'c2'.
		require
			valid_rows: is_valid_row (r1) and is_valid_row (r2)
			valid_columns: is_valid_column (c1) and is_valid_column (c2)
			valid_row_range: r1 <= r2
			valid_column_range: c1 <= c2
		local
			rows, columns: INTEGER
		do
			from
				rows := r1
			until
				rows > r2
			loop
				from
					columns := c1
				until
					columns > c2
				loop
					imp.put (status, rows, columns)
					columns := columns + 1
				end
				rows := rows + 1
			end
		ensure
			slots_in_range_set:
				across r1 |..| r2 as cursor1
				all
					across c1 |..| c2 as cursor2
					all
						imp.item (cursor1.item, cursor2.item) ~ status
					end
				 end
			slots_not_in_range_unchanged: matches_slots_except (current, r1, r2, c1, c2)
		end

feature -- Auxiliary Queries

	matches_slots_except (other: BOARD; r1, r2, c1, c2: INTEGER): BOOLEAN
			-- Do slots outside the intersection of
			-- rows 'r1' to 'r2' and columns 'c1' and 'c2'
			-- match in Current and 'other'.
		require
			consistent_row_numbers: Current.number_of_rows = other.number_of_rows
			consistent_column_numbers: Current.number_of_columns = other.number_of_columns
			valid_rows: is_valid_row (r1) and is_valid_row (r2)
			valid_columns: is_valid_column (c1) and is_valid_column (c2)
			valid_row_range: r1 <= r2
			valid_column_range: c1 <= c2
		local
			i, j: INTEGER
		do
			from
				i := 1
			until
				i > number_of_rows
			loop
				from
					j := 1
				until
					j > number_of_columns
				loop
					if i >= r1 and i <= r2 then
						if j >= c1 and j <= c2 then
							j := c2 + 1
						end
					end
					Result := current.status_of (i, j) ~ other.status_of (i, j)
					j := j + 1
				end
				i := i + 1
			end
		ensure
			correct_result:
				Result ~
					across 1 |..| number_of_rows as cursor1
						all
							across 1 |..| number_of_columns as cursor2
							all
								(cursor1.item < r1 and cursor1.item > r2) or (cursor2.item < c1 and cursor2.item > c2) implies other.status_of (cursor1.item, cursor2.item).is_equal (status_of (cursor1.item, cursor2.item))
							end
						end
		end

	unavailable_slot: UNAVAILABLE_SLOT
			-- A slot not available for movement.
		do
			Result := ssa.unavailable_slot
		ensure
			Result = ssa.unavailable_slot
		end

	occupied_slot: OCCUPIED_SLOT
			-- A slot available for moment but currently occupied.
		do
			Result := ssa.occupied_slot
		ensure
			Result = ssa.occupied_slot
		end

	unoccupied_slot: UNOCCUPIED_SLOT
			-- A slot available for moment and currently unoccupied.
		do
			Result := ssa.unoccupied_slot
		ensure
			Result = ssa.unoccupied_slot
		end

feature -- Queries

	number_of_rows: INTEGER
			-- Number of rows in the board of game.
		do
			Result := imp.height
		ensure
			correct_result: Result = imp.height
		end

	number_of_columns: INTEGER
			-- Number of columns in the board of game.
		do
			Result := imp.width
		ensure
			correct_result: Result = imp.width
		end

	is_valid_row (r: INTEGER): BOOLEAN
			-- Is 'r' a valid row number?
		do
			Result:= (r >= 1 and r <= number_of_rows)
		ensure
			correct_result: Result = (r >= 1 and r <= number_of_rows)
		end

	is_valid_column (c: INTEGER): BOOLEAN
			-- Is 'x' a valid column number?
		do
			Result:= (c >= 1 and c <= number_of_columns)
		ensure
			correct_result: Result = (c >= 1 and c <= number_of_columns)
		end

	status_of (r, c: INTEGER): SLOT_STATUS
			-- Is the slot at row 'r' and column 'c'
			-- unavailable, occupied, or unoccupied?
		require
			valid_row: is_valid_row (r)
			valid_column: is_valid_column (c)
		do
			Result := imp.item (r, c)
		ensure
			correct_result: Result = imp.item (r, c)
		end

	number_of_occupied_slots: INTEGER
			-- Number of slots occupied by pegs on current board.
		local
			i, j, count: INTEGER
		do
			from
				i := 1
			until
				i > number_of_rows
			loop
				from
					j := 1
				until
					j > number_of_columns
				loop
					if imp.item (i, j) ~ occupied_slot then
						count := count + 1
					end
					j := j + 1
				end
				i := i + 1
			end
			Result := count
		end

feature -- Equality

	is_equal (other: like Current): BOOLEAN
			-- Is current board equal to 'other'?
		do
			Result:= (Current.out ~ other.out)
		ensure then
			correct_output: Result = (Current.out ~ other.out)
		end

feature -- Output

	out: STRING
			-- String representation of current board.
		local
			i, j: INTEGER
		do
			create Result.make_empty
			from
				i := 1
			until
				i > number_of_rows
			loop
				from
					j := 1
				until
					j > number_of_columns
				loop
					if imp.item (i, j) ~ occupied_slot then
						Result.append ("O")
					elseif imp.item (i, j) ~ unavailable_slot then
						Result.append ("*")
					else
						Result.append (".")
					end
					if i < number_of_rows and j = number_of_columns then
						Result.append ("%N")
					end
					j := j + 1
				end
				i := i + 1
			end
		end

feature {NONE} -- Implementation

	ssa: SLOT_STATUS_ACCESS

	bta: BOARD_TEMPLATES_ACCESS

		-- Note: ARRAY2 takes row (y) and then column (x)

	imp: ARRAY2 [SLOT_STATUS]

end
