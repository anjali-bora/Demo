  GNU nano 4.9.2                                                                                                                 UnitConversation.sh
function unit_conversation() {
        feet=12
        inches=42
        result=$(( $inches/$feet ))
        echo $result"ft"
}
unit_conversation
