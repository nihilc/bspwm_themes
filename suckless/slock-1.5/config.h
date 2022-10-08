/* user and group to drop privileges to */
static const char *user = "nihil";
static const char *group = "nihil";

static const char *colorname[NUMCOLS] = {
    [INIT] = "black",     /* after initialization */
    [INPUT] = "#005577",  /* during input */
    [FAILED] = "#CC3333", /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* insert grid pattern with scale 1:1, the size can be changed with logosize */
static const int logosize = 16;
/* grid width and height for right center alignment */
static const int logow = 34;
static const int logoh = 34;

static XRectangle rectangles[120] = {
//   x  y  w  h
    {16,  0,  2,  2},
    {15,  2,  4,  2},
    {14,  4,  6,  2},
    {13,  6,  8,  1},
    {14,  7,  7,  1},
    {15,  8,  7,  1},
    {12,  9,  1,  1},
    {16,  9,  6,  1},
    {11, 10,  3,  1},
    {17, 10,  6,  1},
    {11, 11,  5,  1},
    {18, 11,  5,  1},
    {10, 12, 14,  2},
    { 9, 14, 16,  2},
    { 8, 16, 18,  2},
    { 7, 18,  9,  1},
    {18, 18,  9,  1},
    { 7, 19,  8,  1},
    {19, 19,  8,  1},
    { 6, 20,  9,  2},
    {19, 20,  9,  1},
    {19, 21,  4,  1},
    {25, 21,  3,  1},
    { 5, 22,  9,  2},
    {20, 22,  4,  1},
    {27, 22,  2,  1},
    {20, 23,  5,  1},
    { 4, 24, 10,  2},
    {20, 24,  7,  1},
    {20, 25,  9,  1},
    { 3, 26, 11,  1},
    {20, 26, 11,  1},
    { 3, 27,  9,  1},
    {22, 27,  9,  1},
    { 2, 28,  8,  1},
    {24, 28,  8,  1},
    { 2, 29,  6,  1},
    {26, 29,  6,  1},
    { 1, 30,  5,  1},
    {28, 30,  5,  1},
    { 1, 31,  3,  1},
    {30, 31,  3,  1},
    { 0, 32,  2,  1},
    {32, 32,  2,  1},
};

/*Enable blur*/
#define BLUR
/*Set blur radius*/
static const int blurRadius = 5;
/*Enable Pixelation*/
// #define PIXELATION
/*Set pixelation radius*/
static const int pixelSize = 205;
