"""Monarch Money MCP Server."""

__version__ = "0.1.0"

# The monarchmoney library hardcodes the old API domain. Patch it to the current one.
from monarchmoney.monarchmoney import MonarchMoneyEndpoints
MonarchMoneyEndpoints.BASE_URL = "https://api.monarch.com"