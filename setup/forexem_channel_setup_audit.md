# ForeXem - Forex Master — SAM-X setup audit

Audit basis: 38 public videos listed on the channel, uploaded DOCX summaries, public transcripts where available, and linked settings/source assets recovered from the descriptions.

Policy applied: exact-only. No missing value was guessed. A setup is backtest-ready only if its entry, direction, stop, target/exit, timeframe, session, and other SAM-X-required behavior are pinned to an exact stated rule and are expressible in the SAM-X vocabulary.

## Complete and backtest-ready setups

**None at this audit stage.** Every candidate is either missing a required rule, uses an unsupported/proprietary implementation, uses a market outside SAM-X's permitted universe, or has multi-target/discretionary behavior that cannot be represented exactly in the current setup schema.

## Incomplete / held aside

| # | Video / setup | Clearly stated | Missing or blocking items |
|---:|---|---|---|
| 1 | I Ranked Every Major Prop Firm in 2026 | Prop-firm discussion; gold/forex mentioned | **missing:** setup entry, direction, timeframe, stop, target/exit, session, indicator settings; review-only content |
| 2 | Gold Reaper Latest Version v4.6 | EA installation/review | **missing:** exact entry, direction, timeframe, stop, target/exit, session, risk rules; review-only content |
| 3 | Free Gold Trading Bot / Lizard EA | XAUUSD; H1 in video summary; breakout system; 9 strategies; mandatory SL/TP; no grid/martingale claim; linked H1 and M15 `.set` files | **missing:** exact breakout/entry logic, direction behavior, exit priority, max hold, session, one-trade/day behavior; compiled `.ex5` only, so the `.set` values do not reveal the entry algorithm |
| 4 | Bitcoin EA / Crypto Investor EA | BTC; M1/M15; high-precision entry claim; conservative `.set` file recovered | **missing:** exact entry, direction, stop, target/exit, session, hold; **blocked:** BTC is outside SAM-X's permitted markets |
| 5 | Triple Confluence Navigator | Pine source recovered; RSI 14; filtered fast/slow lengths 9/45; ARSI 14/14; Kalman defaults; Supertrend ATR 14/factor 2; swing 5; ATR 14; SL cap 1.5 ATR; structural buffer 0.25 ATR; TP 1R/2R/3R; confluence window 5; optional HTF 240; optional ADX 14/min 20; exact long/short confluence logic in source | **missing:** timeframe, symbol universe, session, one-trade/day, max hold; **blocked:** custom Kalman/LLAMA/ARSI/pivot implementation and 3 partial targets are not exactly representable in current SAM-X vocabulary; source is an indicator, not a SAM-X trade spec |
| 6 | Traders Are Quietly Building and Automating Their Own Indicators | General Pine/backtesting education | **missing:** concrete setup; no testable strategy |
| 7 | Chinetti Pip Collector / Heikin-Ashi scalping | 30-minute; Heikin-Ashi; trendlines; buy/sell indicator; MT4 archive and manual recovered | **missing:** exact candle/trendline definitions, entry trigger, direction, stop, target/exit, session, hold; compiled indicators/templates do not expose exact logic |
| 8 | FluxCharts SFX Algo | Pine source recovered; long/short; custom Supertrend + SMA; source defaults include sensitivity 6, Supertrend ATR 11, SMA 13 signal filter; ATR(14) SL multiplier 6; TP ATR multipliers 1.5/3/5/9; TP allocations 30/30/30/10; several other source inputs | **missing:** explicit SAM-X timeframe, symbol, session, one-trade/day, max hold; **blocked:** multi-target allocation and custom source behavior are not exactly represented by one SAM-X target; source is crypto-oriented by default and has unsupported/unused modules |
| 9 | GoldStuff Indicator | XAUUSD; Daily/H1/H4/M15; trend, entry, exit/dashboard claims; MT5 indicator/template recovered | **missing:** exact signal conditions, periods/thresholds, stop, target/exit, direction, session, hold; compiled `.ex5` only |
| 10 | Volume Profile Strategy | POC, Value Area, LVN; linked source text recovered | **missing:** exact calculation/window, entry trigger, direction, stop, target/exit, timeframe, session, hold, one-trade/day; volume profile rules are not pinned |
| 11 | Gold Coin M5 | XAUUSD; M5 execution; ADX across M5/M15/H1; tick-volume impulse; pending orders; trailing stops; linked `.ex4` recovered | **missing:** ADX periods/thresholds, volume rule, pending-order placement, stop/target/trailing formulas, session, hold, one-trade/day; compiled `.ex4` only |
| 12 | ETMFx Scalping / SMC | Market structure; HH/HL/LH/LL; BOS/CHoCH; supply/demand; liquidity; imbalance/FVG; order blocks; examples on lower timeframes/NAS/indices | **missing:** deterministic swing algorithm, BOS/CHoCH confirmation, zone construction, entry trigger, direction, stop, target/exit, timeframe, session, hold; discretionary/unsupported as stated |
| 13 | Tinga Tinga EA | MT5 preferred; EMA 5/12 crossover; buy on fast-above-slow and sell on fast-below-slow; 4-pip price-movement filter; M15/H1; XAUUSD/USDJPY; smart-progressive preset mentioned | **missing:** exact stop, exact exit after the 20-pip favorable move, whether close means candle close or another condition, session, max hold, one-trade/day; original EA source/settings not recovered |
| 14 | Alpha Striker AI V4 | M15; scalping/trend hybrid; claimed max 3% drawdown; 0.1/0.2-lot examples; normal/high/low-risk `.set` files recovered | **missing:** exact entry/direction, stop/target units and execution, session, hold, one-trade/day; compiled `.ex4` only; settings files do not define the proprietary signal logic |
| 15 | AI Signals Platinum | Pine source recovered; 1-minute XAUUSD claim; Supertrend ATR 11 with Low/Medium/High factors 5/2.5/2; SMA 13 signal filter in source; bullish `crossover(close, supertrend) and close >= SMA13`; bearish inverse; PSAR/EMA/Keltner/pivot modules | **missing:** exact stop, target/exit, max hold, session as a machine rule, one-trade/day; video mentions 1.5R and London/NY overlap but source does not implement them as exact exits; source exposes optional visual modules not trading exits |
| 16 | Gold Sniper Entry System | XAUUSD; support/resistance; market structure; supply/demand; London/New York/Asia discussion; candlestick examples | **missing:** deterministic levels, entry trigger, direction, stop, target/exit, timeframe, session hours, hold; discretionary setup |
| 17 | Money Algorithm / Free TradingView Indicator | Gold/EURUSD/GBPUSD; trend, momentum, volume; MTF/volatility/session panel; non-lagging signals; dynamic TP1/TP2/TP3/trailing claims; linked source text recovered | **missing:** exact signal formula, periods/thresholds, stop, target behavior, timeframe, session hours, hold, one-trade/day; source is descriptive/visual and not a verified SAM-X spec |
| 18 | Jaguar EA | Boom/Crash/volatility-index testing mentioned; linked `.ex5` archive recovered | **missing:** all SAM-X rules; **blocked:** Boom/Crash/volatility indices are outside permitted markets |
| 19 | Gold Hunter V8/V9 | XAUUSD; V9 M15 preset; lot 0.01; multiplier 1.0; combined TP 400/420 pips; grid step 1200/1020 pips; max orders 99; compiled EA and presets recovered | **missing:** exact entry, direction, stop/exit priority, session, hold; **blocked:** grid/multi-order behavior violates SAM-X defined-risk setup requirements and cannot be represented as a single setup |
| 20 | ICT Scalping / PD Array Method | Bullish/bearish breakouts; FVG/BISI/SIBI; breakers; order blocks; lower-timeframe structure | **missing:** deterministic definitions, entry trigger, direction, stop, target/exit, timeframe, session, hold; discretionary/unsupported as stated |
| 21 | Drone Array Supply & Demand | Pine source recovered; Sensitivity 1; ATR length 10; ATR factor 7; SMA trend filter length 20; optional volume filter/threshold 1.1; Supertrend cross; momentum filter; 2-bar cooldown; ATR(14)*3 stop; 1R–5R plotted targets | **missing:** timeframe, symbol, session, one-trade/day, max hold; **blocked:** five partial targets, custom cooldown/state behavior, and MTF dashboard cannot be preserved exactly as one SAM-X target/spec |
| 22 | POW Banker EA | XAUUSD/NASDAQ claims; dynamic risk; volatility-based stop claim; 8–10% target discussion; linked `.ex5` recovered | **missing:** exact entry, stop formula, target, direction, timeframe, session, hold, one-trade/day; NASDAQ may map to NAS100 only if explicitly confirmed |
| 23 | 100% Non-Repaint Indicator | Forex/crypto; buy/sell signals; MT4 indicators/template recovered | **missing:** exact signal formula, period/threshold, stop, target/exit, timeframe, session, hold; compiled `.ex4` only; crypto claims outside universe |
| 24 | Nasdaq Ghost Robot Platinum | NASDAQ; one-week test; MT4 EA/indicators/DLL archive recovered | **missing:** exact entry, direction, stop, target/exit, timeframe, session, hold; compiled binaries/DLL only; no reproducible rule spec |
| 25 | $10,000 Trading Bot Secret | Short-term trades on tight-spread instruments; daily timeframe mentioned; general bot review | **missing:** exact entry, direction, stop, target/exit, timeframe interpretation, session, hold; review/marketing content |
| 26 | GainzAlgo V2 competitor | Buy/sell labels; trend detection; noise reduction; dynamic support/resistance; forex/crypto | **missing:** exact signal formula, periods/thresholds, stop, target/exit, timeframe, session, hold; crypto outside universe; no verified executable rule set |
| 27 | Black Dragon MT5 / Bitcoin bot | BTC; `.set` recovered; TF 5; stochastic settings 7/1/2, levels 90/10; max orders 99; initial lot 0.01; martingale 1.14; max lot 9.6; trailing settings; news filter off | **missing:** exact entry/exit semantics; **blocked:** BTC outside universe and martingale/multi-order behavior violates SAM-X defined-risk rules |
| 28 | LuxAlgo open-source version | MTF signals, screeners, AI assistant, backtesting claims | **missing:** exact entry, direction, stop, target/exit, periods, timeframe, session, hold; no verified executable setup in supplied material |
| 29 | Intelligent Trend Indicator | Indicator review; claimed large daily result | **missing:** exact entry, direction, stop, target/exit, timeframe, session, hold, parameters; no testable rule set |
| 30 | LUNA FX Indicator | Forex; binary-options bot/indicator; MT4 archive recovered | **missing:** exact rules and exits; **blocked:** binary-options behavior is not the SAM-X spot/CFD trade model |
| 31 | MT4 X-SPEED | M1/M5 scalping; buy/sell alerts; ADR/spread dashboard; standard/aggressive risk modes | **missing:** exact signal formula, stop, target/exit, direction, session, hold, parameters; no source code/settings recovered |
| 32 | TITANX PRO | Buy/sell signals; trend detection; optional extra filtering; MT4 system archive and manual recovered | **missing:** exact signal formula, periods/thresholds, stop, target/exit, timeframe, session, hold; compiled indicators only |
| 33 | John Ghatti review | Forex review/content | **missing:** all setup rules; review-only |
| 34 | NRP System / secret formula | Gold/forex; trendline and indicator bundle recovered | **missing:** exact entry, direction, stop, target/exit, timeframe, session, hold; compiled indicators/template only |
| 35 | Brokers phone day-trading strategy | Gold/forex and Boom/Crash/volatility references; day trading | **missing:** exact rules, market scope, direction, timeframe, stop, target/exit, session, hold; Boom/Crash outside universe |
| 36 | Boom Crash Spike Detector | Boom/Crash/gold/forex/crypto references; `.ex5` recovered | **missing:** exact rules and exits; **blocked:** Boom/Crash/crypto outside universe; binary only |
| 37 | NEXUS 6.0 EA / Binary Indicator | MT4 indicator archive and PDF manual recovered | **missing:** exact SAM-X entry/exit/stop/target/timeframe/session rules; binary-options framing and compiled indicators prevent exact conversion |
| 38 | Chandelier Exit / TradingView Strategy Ep1 | Chandelier Exit indicator named | **missing:** full entry rule, direction, ATR/length settings, stop/exit behavior, target, timeframe, session, hold; source/settings not recovered |

## Recovered non-binary assets

The following were found and preserved for exact inspection. They are evidence, not automatically valid SAM-X setups:

- `FREE ALGOs [AI Signals Platinum]` Pine source
- `Triple Confluence Navigator` Pine source and PDF manual
- `Flux Charts SFX Algo` Pine source
- `Drone Arrows with Supply & Demand` Pine source
- `MONEY ALGORITHM` source text
- `SwingVPro` source text
- Lizard M15/H1 `.set` files
- Alpha Striker normal/high-risk/low-risk `.set` files
- Crypto Investor conservative `.set`
- Gold Hunter V9 `.set` presets
- Black Dragon BTC `.set`
- Linked manuals/PDFs where available

Compiled `.ex4`, `.ex5`, `.dll`, and similar binaries were not executed. They were treated as opaque files: useful as provenance, but not sufficient to claim that the underlying strategy is reproducible.

## Backtest status

No official SAM-X gate was run because no setup currently clears the exact-rule eligibility check. Running a guessed implementation would violate the rulebook and make the result misleading.
