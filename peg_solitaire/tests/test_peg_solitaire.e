note
	description: "Tests on peg solitaire games."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_PEG_SOLITAIRE

inherit
	ES_TEST

create
	make

feature -- Constructor
	make
		do
			add_boolean_case (agent test_num_rows_and_column)
			add_boolean_case (agent test_board_out_feature)
			add_boolean_case (agent test_number_of_occupied_slots)
			add_boolean_case (agent test_status_of_feature)
			add_boolean_case (agent test_is_equal_feature)
			add_boolean_case (agent test_set_status_feature)
			add_boolean_case (agent test_set_statuses_feature)
			add_boolean_case (agent test_matches_slot_except_feature)
			add_boolean_case (agent test_is_equal_slot_status)
			add_boolean_case (agent test_easy_game_creation)

			add_boolean_case (agent test_move_down)
			add_boolean_case (agent test_move_up)
			add_boolean_case (agent test_move_right)
			add_boolean_case (agent test_move_left)
		end

feature -- Templates
	bta: BOARD_TEMPLATES_ACCESS

feature -- Tests of Creation
	test_num_rows_and_column: BOOLEAN
		local
			g: GAME
		do
			comment ("test 0: test the number of rows and column in the board class")
			create g.make_easy
			Result:= g.board.number_of_rows=7 and g.board.number_of_columns=7
			check Result end
		end

	test_board_out_feature: BOOLEAN
		local
			g,g1,g2,g3,g4,g5,g6,g7: GAME
		do
			comment ("test 1: test the out feature of the board class")

			create g.make_easy
			Result:=g.board.out ~ bta.templates.easy_board_out
			check Result end

			create g1.make_skull
			Result:=g1.board.out ~ bta.templates.skull_board_out
			check Result end

			create g2.make_arrow
			Result:=g2.board.out ~ bta.templates.arrow_board_out
			check Result end

			create g3.make_cross
			Result:=g3.board.out ~ bta.templates.cross_board_out
			check Result end

			create g4.make_diamond
			Result:=g4.board.out ~ bta.templates.diamond_board_out
			check Result end

			create g5.make_plus
			Result:=g5.board.out ~ bta.templates.plus_board_out
			check Result end

			create g6.make_pyramid
			Result:=g6.board.out ~ bta.templates.pyramid_board_out
			check Result end
		end

	test_number_of_occupied_slots: BOOLEAN
		local
			g,g1: GAME
		do
			comment ("test 2: test the number of occupied slots in the board class")
			create g.make_easy

			Result:=g.board.number_of_occupied_slots = 3
			check Result end

			g.board.set_status (4, 4, g.board.occupied_slot)
			Result:=g.board.number_of_occupied_slots = 4
			check Result end

			create g1.make_pyramid

			Result:=g1.board.number_of_occupied_slots=16
			check Result end
		end

	test_status_of_feature: BOOLEAN
		local
			g,g1: GAME
		do
			comment ("test 3: test the status of feature in the board class")
			create g.make_easy

			Result:= g.board.status_of (1, 4) ~ g.board.unoccupied_slot
			check Result end

			g.board.set_status (4, 4, g.board.occupied_slot)
			Result:=g.board.status_of (4, 4) ~ g.board.occupied_slot
			check Result end

			create g1.make_plus
			Result:=g1.board.status_of (6, 7) ~ g.board.unavailable_slot
			check Result end

			g1.board.set_status (4, 4, g.board.unoccupied_slot)
			Result:=g1.board.status_of (4, 4) ~ g1.board.unoccupied_slot
			check Result end
		end

	test_is_equal_feature: BOOLEAN
		local
			g,g1: GAME
		do
			comment ("test 4: test the is equal feature in the board class")
			create g.make_arrow
			create g1.make_arrow

			Result:=g.board.is_equal (g1.board)
			check Result end

			g1.board.set_status (2, 4, g1.board.unoccupied_slot)
			Result:=not g.board.is_equal (g1.board)
			check Result end
		end

	test_set_status_feature: BOOLEAN
		local
			g: GAME
		do
			comment ("test 5: test the set status feature in the board class")
			create g.make_skull

			g.board.set_status (7, 1, g.board.occupied_slot)
			g.board.set_status (4, 4, g.board.unoccupied_slot)

			Result:= (g.board.status_of (4,4) ~ g.board.unoccupied_slot) and (g.board.status_of (7,1) ~ g.board.occupied_slot)
			check Result end
		end

	test_set_statuses_feature: BOOLEAN
		local
			g: GAME
			i,j: INTEGER
		do
			comment ("test 6: test the set statuses feature in the board class")
			create g.make_easy

			g.board.set_statuses (2, 4, 1, 6, g.board.occupied_slot)
			from
				i:=2
			until
				i > 4
			loop
				from
					j:=1
				until
					j>6
				loop
					Result:=g.board.status_of (i, j) ~ g.board.occupied_slot
					check Result end
					j:=j+1
				end
				i:=i+1
			end
		end

	test_matches_slot_except_feature: BOOLEAN
		local
			g,g1: GAME
		do
			comment ("test 7: test matches slot except feature of the board class")
			create g.make_easy
			create g1.make_easy

			g.board.set_statuses (2, 4, 2, 6, g.board.occupied_slot)
			Result:=g.board.matches_slots_except (g1.board, 2, 4, 2, 6)
			check Result end
		end

	test_is_equal_slot_status: BOOLEAN
		local
			g: GAME
		do
			comment ("test 8: test is equal of slot status")
			create g.make_easy

			Result:=g.board.status_of (1, 4).is_equal (g.board.status_of (4, 4))
			check Result end
		end
	test_easy_game_creation: BOOLEAN
		local
			g: GAME
		do
			comment ("------test: game creation with easy board------")
			create g.make_easy
			Result :=
					g.board ~ bta.templates.easy_board
				and not g.is_over
				and not g.is_won
			check Result end

		Result := g.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			***.***
			***O***
			***O***
			***.***
			***O***
			***.***
			*******
			]"
			check Result end
		end

---------------------------------------------------------------------------------------------------------
		test_move_down: BOOLEAN
			local
				g: GAME
			do
				comment ("test 0: test move down for the game class")
				create g.make_easy

				g.move_down (2,4)
				Result:=
					g.board.status_of (4, 4) ~ g.board.occupied_slot
					and
					g.board.status_of (2, 4) ~ g.board.unoccupied_slot
					and
					g.board.status_of (3, 4) ~ g.board.unoccupied_slot
				check Result end
			end

		test_move_up: BOOLEAN
			local
				g: GAME
			do
				comment ("test 1: test move up for the game class")
				create g.make_cross

				g.move_up (3,4)
				Result:=
					g.board.status_of (1, 4) ~ g.board.occupied_slot
					and
					g.board.status_of (2, 4) ~ g.board.unoccupied_slot
					and
					g.board.status_of (3, 4) ~ g.board.unoccupied_slot
				check Result end
			end

		test_move_right: BOOLEAN
			local
				g: GAME
			do
				comment ("test 2: test move right for the game class")
				create g.make_diamond

				g.move_right (4, 2)
				Result:=
					g.board.status_of (4,4) ~ g.board.occupied_slot
					and
					g.board.status_of (4,3) ~ g.board.unoccupied_slot
					and
					g.board.status_of (4,2) ~ g.board.unoccupied_slot
				check Result end
			end

		test_move_left: BOOLEAN
			local
				g: GAME
			do
				comment ("test 3: test move left for the game class")
				create g.make_pyramid

				g.move_left (3,4)
				Result:=
					g.board.status_of (3,2) ~ g.board.occupied_slot
					and
					g.board.status_of (3,3) ~ g.board.unoccupied_slot
					and
					g.board.status_of (3,4) ~ g.board.unoccupied_slot
				check Result end
			end
end
