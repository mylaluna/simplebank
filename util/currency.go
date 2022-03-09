package util

// Constants for all suppported currencies
const (
	USD = "USD"
	EUR = "EUR"
	AUD = "AUD"
	RMB = "RMB"
)

// IsSupportedCurrency returns true if the currency is supported
func IsSupportedCurrency(currency string) bool {
	switch currency {
	case USD, EUR, AUD, RMB:
		return true
	}
	return false
}
