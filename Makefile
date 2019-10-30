LIB=-lm
CFLAGS=-I ./include -Wall -Wextra -Wshadow -Wpedantic
CC=clang

OBJ=approximateEntropy.o              \
    blockFrequency.o                  \
    cephes.o                          \
    cusum.o                           \
    dfft.o                            \
    discreteFourierTransform.o        \
    erf.o                             \
    frequency.o                       \
    generators.o                      \
    genutils.o                        \
    linearComplexity.o                \
    longestRunOfOnes.o                \
    matrix.o                          \
    nonOverlappingTemplateMatchings.o \
    overlappingTemplateMatchings.o    \
    randomExcursions.o                \
    randomExcursionsVariant.o         \
    rank.o                            \
    runs.o                            \
    serial.o                          \
    universal.o                       \
    utilities.o                       \
    assess.o

all: $(OBJ)
	$(CC) $(OBJ) -o sts $(LIB)

%.o : %.c
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm *.o sts
