note
	description: "Tests on bad players."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_BAD_PLAYER

inherit
	ES_TEST

create
	make

feature -- Constructor
	make
		do
			add_boolean_case (agent test_player_game_out)
			add_boolean_case (agent test_out_feature)
			add_boolean_case (agent test_number_of_occupied_slots)

			add_boolean_case (agent test_bad_player_loses_easy_board)

		end

feature -- Tests

	test_player_game_out: BOOLEAN
		local
			p1,p2,p3,p4,p5: BAD_PLAYER
		do
			comment ("test 0: test the final board representation of the bad player game")

			create p1.make
			create p2.make
			create p3.make
			create p4.make
			create p5.make

			p1.game.make_easy
			p1.loses_easy_board

			Result:= p1.game.out ~ "[
				Game is over: Yes
				Game is won : No
				Board Status:
				***O***
				***.***
				***.***
				***.***
				***O***
				***.***
				*******
			]"
			check Result end

			p2.game.make_arrow
			p2.loses_arrow_game

			Result:= p2.game.out ~ "[
				Game is over: Yes
				Game is won : No
				Board Status:
				**O.O**
				**...**
				.O.O.O.
				..O....
				.......
				**...**
				**O..**
			]"
			check Result end

			p3.game.make_diamond
			p3.loses_diamond_game

			Result:= p3.game.out ~ "[
				Game is over: Yes
				Game is won : No
				Board Status:
				**.O.**
				**..O**
				..O...O
				.......
				.....O.
				**O..**
				**.O.**
			]"
			check Result end

			p4.game.make_pyramid
			p4.loses_pyramid_game

			Result:= p4.game.out ~ "[
				Game is over: Yes
				Game is won : No
				Board Status:
				**...**
				**O.O**
				.O...O.
				.......
				..O.O.O
				**...**
				**...**
			]"
			check Result end

			p5.game.make_skull
			p5.loses_skull_game

			Result:= p5.game.out ~ "[
				Game is over: Yes
				Game is won : No
				Board Status:
				**...**
				**...**
				....O..
				.......
				..O...O
				**...**
				**O..**
			]"
			check Result end
		end

	test_out_feature: BOOLEAN
		local
			p1,p2,p3,p4,p5: BAD_PLAYER
		do
			comment ("test 1: test the out feature when the player creates different boards")
			create p1.make
			create p2.make
			create p3.make
			create p4.make
			create p5.make


			p1.game.make_easy
			p2.game.make_arrow
			p3.game.make_diamond
			p4.game.make_pyramid
			p5.game.make_skull

			Result:= p1.game.board.out ~ p1.game.bta.templates.easy_board_out
			check Result end

			Result:= p2.game.board.out ~ p2.game.bta.templates.arrow_board_out
			check Result end

			Result:= p3.game.board.out ~ p3.game.bta.templates.diamond_board_out
			check Result end

			Result:= p4.game.board.out ~ p4.game.bta.templates.pyramid_board_out
			check Result end

			Result:= p5.game.board.out ~ p5.game.bta.templates.skull_board_out
			check Result end

		end

	test_number_of_occupied_slots: BOOLEAN
		local
			p1,p2,p3,p4,p5: BAD_PLAYER
		do
			comment ("test 2: test that the number of occupied slots left is more than one implies game is not won but is over")
			create p1.make
			create p2.make
			create p3.make
			create p4.make
			create p5.make

			p1.game.make_easy
			p1.loses_easy_board

			p2.game.make_arrow
			p2.loses_arrow_game

			p3.game.make_diamond
			p3.loses_diamond_game

			p4.game.make_pyramid
			p4.loses_pyramid_game

			p5.game.make_skull
			p5.loses_skull_game

			Result:= (p1.game.board.number_of_occupied_slots > 1 implies (not p1.game.is_won and p1.game.is_over))
					 AND (p2.game.board.number_of_occupied_slots > 1 implies (not p2.game.is_won and p2.game.is_over))
					 AND (p3.game.board.number_of_occupied_slots > 1 implies (not p3.game.is_won and p3.game.is_over))
					 AND (p4.game.board.number_of_occupied_slots > 1 implies (not p4.game.is_won and p4.game.is_over))
					 AND (p5.game.board.number_of_occupied_slots > 1 implies (not p5.game.is_won and p5.game.is_over))
			check Result end
		end

	test_bad_player_loses_easy_board: BOOLEAN
		local
			player: BAD_PLAYER
		do
			comment ("------test: bad player loses an easy board------")
			create player.make

			player.game.make_easy
			player.loses_easy_board
			Result :=
					player.game.is_over
				and not player.game.is_won
			check Result end
		end
end
