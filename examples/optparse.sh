function usage() {
  echo "Usage:"
  echo "    optparse.sh [-efgh] [-a ARG_A] [-b ARG_B] [-c ARG_C] [-d ARG_D]"
  echo ""
  echo "Options:"
  echo "  -a ARG_A: Some required argument of A"
  echo "  -b ARG_B: Some required argument of B"
  echo "  -c ARG_C: Some required argument of C"
  echo "  -d ARG_D: Some required argument of D"
  echo "  -e:       Some flag parameter E"
  echo "  -f:       Some flag parameter F"
  echo "  -g:       Some flag parameter G"
  echo "  -h:       Show this help message"
  exit 1
}
while getopts a:b:c:d:efgh OPT; do
  case "$OPT" in
    a)
      ARG_A="$OPTARG"
      echo "A - ${ARG_A}"
      ;;
    b)
      ARG_B="$OPTARG"
      echo "B - ${ARG_B}"
      ;;
    c)
      ARG_C="$OPTARG"
      echo "C - ${ARG_C}"
      ;;
    d)
      ARG_D="$OPTARG"
      echo "D - ${ARG_D}"
      ;;
    e|f|g)
      echo "$OPT Flag passed!"
      ;;
    h)
      usage
      ;;
    *)
      usage
      ;;
  esac
done
