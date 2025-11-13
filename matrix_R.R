### a) Create the matrix in 3 different ways
# Method 1: Using matrix() and dim()
player <- c("dark", "dark", "dark", "dark", "dark",
            "light", "light", "light", "light", "light")
piece <- c("king", "queen", "pawn", "pawn", "knight",
           "bishop", "king", "rook", "pawn", "pawn")
m1 <- matrix(c(player, piece), ncol = 2)
colnames(m1) <- c("Player", "Piece")
m1

# Method 2: Using cbind()
m2 <- cbind(Player = player, Piece = piece)
m2

# Method 3: Using data.frame() and converting to matrix
df <- data.frame(Player = player, Piece = piece, stringsAsFactors = FALSE)
m3 <- as.matrix(df)
m3

### b) Faster way: Directly create using cbind()
# Directly bind without creating separate variables
m_fast <- cbind(Player = rep(c("dark", "light"), times = c(5, 5)),
                Piece = c("king", "queen", "pawn", "pawn", "knight",
                          "bishop", "king", "rook", "pawn", "pawn"))
m_fast

### c) Assign names in two ways
# Way 1: Use colnames()
colnames(m1) <- c("Player", "Piece")
m1
# Way 2: Use dimnames()
dimnames(m2) <- list(NULL, c("Player", "Piece"))
m2

### d) Would rbind() be practical here?
# Example: Adding a new row with rbind()
m_added <- rbind(m1, c("dark", "bishop"))
m_added

### e) Making adding a row worthwhile
# Adding new game pieces dynamically
new_piece <- c("light", "queen")
m_dynamic <- rbind(m1, new_piece)
m_dynamic
