-- Seed benchmarks with historical data from ~260 players
-- These will be overwritten by refresh_benchmarks() once enough Trajectory data accumulates

-- Clear any existing 'all' benchmarks first
DELETE FROM benchmarks WHERE student_level = 'all';

-- Insert seed benchmarks for 'all' level
INSERT INTO benchmarks (student_level, metric, p25, p50, p75, sample_size) VALUES
  ('all', 'milestones_completed',  0,       0,       1,       260),
  ('all', 'final_turn',           4,       5,       7,       260),
  ('all', 'peak_valuation',       500000,  1500000, 3000000, 260),
  ('all', 'total_funding_raised', 300000,  800000,  2000000, 260),
  ('all', 'num_funding_rounds',   1,       2,       3,       260),
  ('all', 'final_valuation',      0,       0,       500000,  260);
