use v6;

use Druid::Player;

=begin SUMMARY
A computer player. It currently only makes random sarsen moves, and is thus
ridiculously easily defeatable.
=end SUMMARY

class Druid::Player::Computer is Druid::Player {
    method choose-move() {
        my ($row, $column);
        repeat {
            $row    = (^$.size).pick[0];
            $column = (^$.size).pick[0];
        } until $.colors[$row][$column] == 0 | $!color;

        my $move = chr(ord('a')+$column) ~ ($row+1);

        say '';
        say "The computer moves $move";
        return $move;
    }
}

# vim: filetype=perl6
