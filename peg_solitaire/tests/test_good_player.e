note
	description: "Tests on good players."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_GOOD_PLAYER

inherit
	ES_TEST

create
	make

feature -- Constructor
	make
		do
			add_boolean_case (agent test_player_game_out)
			add_boolean_case (agent test_num_slot_occupied)
			add_boolean_case (agent test_good_player_wins_easy_board)
		end

feature -- Tests
	test_player_game_out: BOOLEAN
		local
			p1,p2,p3: GOOD_PLAYER
		do
			comment ("test 0: test the final board representation of the good player game")

			create p1.make
			create p2.make
			create p3.make

			p1.game.make_easy
			p1.wins_easy_board

			p2.game.make_cross
			p2.wins_cross_board

			p3.game.make_plus
			p3.wins_plus_board

			Result:= p1.game.out ~ "[
				Game is over: Yes
				Game is won : Yes
				Board Status:
				***.***
				***.***
				***.***
				***.***
				***.***
				***O***
				*******
			]"
			check Result end

			Result:= p2.game.out ~ "[
				Game is over: Yes
				Game is won : Yes
				Board Status:
				**.O.**
				**...**
				.......
				.......
				.......
				**...**
				**...**
			]"
			check Result end

			Result:= p3.game.out ~ "[
				Game is over: Yes
				Game is won : Yes
				Board Status:
				**...**
				**...**
				.......
				...O...
				.......
				**...**
				**...**
			]"
			check Result end
		end

	test_num_slot_occupied: BOOLEAN
		local
			p1,p2,p3: GOOD_PLAYER
		do
			comment ("test 1: test that if the num of occupied slot equals 1 then game is won and over")

			create p1.make
			create p2.make
			create p3.make

			p1.game.make_easy
			p1.wins_easy_board

			p2.game.make_cross
			p2.wins_cross_board

			p3.game.make_plus
			p3.wins_plus_board

			Result:= (p1.game.board.number_of_occupied_slots = 1 implies (p1.game.is_over and p1.game.is_won))
					AND
					(p2.game.board.number_of_occupied_slots = 1 implies (p2.game.is_over and p2.game.is_won))
					AND
					(p3.game.board.number_of_occupied_slots = 1 implies (p3.game.is_over and p3.game.is_won))
			check Result end
		end

	test_good_player_wins_easy_board: BOOLEAN
		local
			player: GOOD_PLAYER
		do
			comment ("test: good player wins an easy board")
			create player.make

			player.game.make_easy
			player.wins_easy_board
			Result :=
					player.game.is_over
				and player.game.is_won
			check Result end
		end
end
