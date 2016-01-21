note
	description: "A bad player who loses many solitaire games."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_PLAYER

inherit

	PLAYER

create
	make

feature -- Commands

	loses_easy_board
			-- Lose a cross board.
		require
			current_game_is_easy: game.board ~ templates.easy_board
		local
			assertion: BOOLEAN
		do
			assertion := game.out ~ "[
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
			check
				assertion
			end
			game.move_up (3, 4)
			assertion := game.out ~ "[
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
			check
				assertion
			end
		ensure
			finished_and_lost_game: game.is_won = false and game.is_over = true
		end

	loses_pyramid_game
		require
			current_game_is_pyramid: game.board ~ templates.pyramid_board
		local
			assertion: BOOLEAN
		do
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**.O.**
				..OOO..
				.OOOOO.
				OOOOOOO
				**...**
				**...**
			]"
			check
				assertion
			end
			game.move_up (4, 5)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**.OO**
				..OO...
				.OOO.O.
				OOOOOOO
				**...**
				**...**
			]"
			check
				assertion
			end
			game.move_left (2, 5)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**O..**
				..OO...
				.OOO.O.
				OOOOOOO
				**...**
				**...**
			]"
			check
				assertion
			end
			game.move_up (4, 4)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**OO.**
				..O....
				.OO..O.
				OOOOOOO
				**...**
				**...**
			]"
			check
				assertion
			end
			game.move_right (2, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**..O**
				..O....
				.OO..O.
				OOOOOOO
				**...**
				**...**
			]"
			check
				assertion
			end
			game.move_up (4, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**O.O**
				.......
				.O...O.
				OOOOOOO
				**...**
				**...**
			]"
			check
				assertion
			end
			game.move_up (5, 2)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**O.O**
				.O.....
				.....O.
				O.OOOOO
				**...**
				**...**
			]"
			check
				assertion
			end
			game.move_up (5, 6)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**O.O**
				.O...O.
				.......
				O.OOO.O
				**...**
				**...**
			]"
			check
				assertion
			end
			game.move_left (5, 4)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**O.O**
				.O...O.
				.......
				OO..O.O
				**...**
				**...**
			]"
			check
				assertion
			end
			game.move_right (5, 1)
			assertion := game.out ~ "[
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
			check
				assertion
			end
		ensure
			finished_and_lost_game: game.is_won = false and game.is_over = true
		end

	loses_arrow_game
		require
			current_game_is_arrow: game.board ~ templates.arrow_board
		local
			assertion: BOOLEAN
		do
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**OOO**
				.OOOOO.
				...O...
				...O...
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_up (3, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**OO.**
				**.OO**
				.O.OOO.
				...O...
				...O...
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_right (1, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**..O**
				**.OO**
				.O.OOO.
				...O...
				...O...
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_up (3, 4)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.OO**
				**..O**
				.O..OO.
				...O...
				...O...
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_left (1, 5)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O..**
				**..O**
				.O..OO.
				...O...
				...O...
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_up (3, 5)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O.O**
				**...**
				.O...O.
				...O...
				...O...
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_up (5, 4)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O.O**
				**...**
				.O.O.O.
				.......
				.......
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_up (7, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O.O**
				**...**
				.O.O.O.
				.......
				..O....
				**.OO**
				**.OO**
			]"
			check
				assertion
			end
			game.move_left (6, 5)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O.O**
				**...**
				.O.O.O.
				.......
				..O....
				**O..**
				**.OO**
			]"
			check
				assertion
			end
			game.move_up (6, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O.O**
				**...**
				.O.O.O.
				..O....
				.......
				**...**
				**.OO**
			]"
			check
				assertion
			end
			game.move_left (7, 5)
			assertion := game.out ~ "[
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
			check
				assertion
			end
		ensure
			finished_and_lost_game: game.is_won = false and game.is_over = true
		end

	loses_diamond_game
		require
			current_game_is_diamond: game.board ~ templates.diamond_board
		local
			assertion: BOOLEAN
		do
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**OOO**
				.OOOOO.
				OOO.OOO
				.OOOOO.
				**OOO**
				**.O.**
			]"
			check
				assertion
			end
			game.move_left (3, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**OOO**
				O..OOO.
				OOO.OOO
				.OOOOO.
				**OOO**
				**.O.**
			]"
			check
				assertion
			end
			game.move_down (3, 1)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**OOO**
				...OOO.
				.OO.OOO
				OOOOOO.
				**OOO**
				**.O.**
			]"
			check
				assertion
			end
			game.move_left (4, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**OOO**
				...OOO.
				O...OOO
				OOOOOO.
				**OOO**
				**.O.**
			]"
			check
				assertion
			end
			game.move_up (5, 1)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**OOO**
				O..OOO.
				....OOO
				.OOOOO.
				**OOO**
				**.O.**
			]"
			check
				assertion
			end
			game.move_down (2, 4)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**O.O**
				O...OO.
				...OOOO
				.OOOOO.
				**OOO**
				**.O.**
			]"
			check
				assertion
			end
			game.move_right (3, 5)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**O.O**
				O.....O
				...OOOO
				.OOOOO.
				**OOO**
				**.O.**
			]"
			check
				assertion
			end
			game.move_down (3, 7)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**O.O**
				O......
				...OOO.
				.OOOOOO
				**OOO**
				**.O.**
			]"
			check
				assertion
			end
			game.move_up (6, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**O.O**
				O......
				..OOOO.
				.O.OOOO
				**.OO**
				**.O.**
			]"
			check
				assertion
			end
			game.move_left (6, 5)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**O.O**
				O......
				..OOOO.
				.O.OOOO
				**O..**
				**.O.**
			]"
			check
				assertion
			end
			game.move_left (5, 5)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**O.O**
				O......
				..OOOO.
				.OO..OO
				**O..**
				**.O.**
			]"
			check
				assertion
			end
			game.move_up (5, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**O.O**
				O.O....
				...OOO.
				.O...OO
				**O..**
				**.O.**
			]"
			check
				assertion
			end
			game.move_down (2, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**..O**
				O......
				..OOOO.
				.O...OO
				**O..**
				**.O.**
			]"
			check
				assertion
			end
			game.move_left (4, 4)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**..O**
				O......
				.O..OO.
				.O...OO
				**O..**
				**.O.**
			]"
			check
				assertion
			end
			game.move_up (5, 2)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**..O**
				OO.....
				....OO.
				.....OO
				**O..**
				**.O.**
			]"
			check
				assertion
			end
			game.move_right (3, 1)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**..O**
				..O....
				....OO.
				.....OO
				**O..**
				**.O.**
			]"
			check
				assertion
			end
			game.move_right (4, 5)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**..O**
				..O....
				......O
				.....OO
				**O..**
				**.O.**
			]"
			check
				assertion
			end
			game.move_up (5, 7)
			assertion := game.out ~ "[
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
			check
				assertion
			end
		ensure
			finished_and_lost_game: game.is_won = false and game.is_over = true
		end

	loses_skull_game
		require
			current_game_is_skull: game.board ~ templates.skull_board
		local
			assertion: BOOLEAN
		do
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**OOO**
				**OOO**
				.OOOOO.
				.O.O.O.
				.OOOOO.
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_down (2, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**OOO**
				**.OO**
				.O.OOO.
				.OOO.O.
				.OOOOO.
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_right (4, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**OOO**
				**.OO**
				.O.OOO.
				.O..OO.
				.OOOOO.
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_left (4, 6)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**OOO**
				**.OO**
				.O.OOO.
				.O.O...
				.OOOOO.
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_left (2, 5)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**OOO**
				**O..**
				.O.OOO.
				.O.O...
				.OOOOO.
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_down (1, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.OO**
				**...**
				.OOOOO.
				.O.O...
				.OOOOO.
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_left (1, 5)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O..**
				**...**
				.OOOOO.
				.O.O...
				.OOOOO.
				**OOO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_up (6, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O..**
				**...**
				.OOOOO.
				.OOO...
				.O.OOO.
				**.OO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_up (4, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O..**
				**O..**
				.O.OOO.
				.O.O...
				.O.OOO.
				**.OO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_down (1, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**...**
				.OOOOO.
				.O.O...
				.O.OOO.
				**.OO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_left (3, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**...**
				O..OOO.
				.O.O...
				.O.OOO.
				**.OO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_up (5, 2)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**...**
				OO.OOO.
				...O...
				...OOO.
				**.OO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_right (3, 1)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**...**
				..OOOO.
				...O...
				...OOO.
				**.OO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_up (4, 4)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**.O.**
				..O.OO.
				.......
				...OOO.
				**.OO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_left (3, 6)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**.O.**
				..OO...
				.......
				...OOO.
				**.OO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_down (2, 4)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**...**
				..O....
				...O...
				...OOO.
				**.OO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_up (5, 4)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**...**
				..OO...
				.......
				....OO.
				**.OO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_right (3, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**...**
				....O..
				.......
				....OO.
				**.OO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_right (5, 5)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**...**
				....O..
				.......
				......O
				**.OO**
				**OOO**
			]"
			check
				assertion
			end
			game.move_left (6, 5)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**...**
				....O..
				.......
				......O
				**O..**
				**OOO**
			]"
			check
				assertion
			end
			game.move_up (7, 3)
			assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**...**
				**...**
				....O..
				.......
				..O...O
				**...**
				**.OO**
			]"
			check
				assertion
			end
			game.move_left (7, 5)
			assertion := game.out ~ "[
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
			check
				assertion
			end
		ensure
			finished_and_lost_game: game.is_won = false and game.is_over = true
		end

end
