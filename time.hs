
data CalendarTime = CalendarTime {
	ctYear :: Int,
	ctMonth :: Month,
	ctDay, ctHour, ctMin, ctSec :: Int,
	ctPicosec :: Integer,
	ctWDay :: Int,
	ctYDay :: Int,
	ctTZName :: String,
	ctTZ :: Int,
	ctIsDST :: Bool
}
